import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:core/src/enums/app_hydrated_storage_key_enum.dart';
import 'package:core/src/enums/enums.dart';
import 'package:core/src/extensions/extensions.dart';
import 'package:core/src/storages/use_process_hydration_key.dart';
import 'package:domain/domain.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:petit_extension/petit_extension.dart';

///Prefer using dependency injection to get instance of this class
AppStorageService get storage => sl<AppStorageService>();

@lazySingleton
class AppStorageService {
  AppStorageService({required FlutterSecureStorage storage}) : _storage = storage;

  final FlutterSecureStorage _storage;

  String _userId = '';
  String _countrySuffix = '';

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final st = Stopwatch()..start();
    await _readConnectedUserID().then((v) async {
      if (v.orNull == null) {
        await delete(AppStorageKey.accessToken);
      }
    });
    await _initializeHydratedStorage();
    await _migrateSecureStorage();
    await _readCurrentCountrySuffix();
    st.stop();
    log('Init AppStorageService take ${st.elapsedMilliseconds} milliseconds');
    return;
  }

  Future<void> refresh() {
    return Future.wait(
      [
        _readConnectedUserID(),
        _readCurrentCountrySuffix(),
      ],
    );
  }

  void prepareAddingNewClient() {
    _userId = '';
  }

  Future<void> changeActiveUserId({required String id, required String countrySuffix}) async {
    _userId = id;
    _countrySuffix = countrySuffix;
    await Future.wait([
      save(AppStorageKey.connectedUserKey, id),
      save(AppStorageKey.countrySuffixCodeKey, countrySuffix),
    ]);
  }

  String _getStorageKey(
    AppStorageKey key, {
    bool avoidConcatWithUserId = false,
  }) {
    if (avoidConcatWithUserId) {
      return key.key;
    }
    if (!key.prefixWithUserId) {
      return key.key;
    }
    return '${_userId}_${key.key}';
  }

  Future<String?> _readConnectedUserID() async {
    final linkedClientIDs = await read(AppStorageKey.linkedUsersKey).then((value) => DP.asListOf<String>(json.decode(value ?? ''))).catchError((_) => <String>[]);
    return read(AppStorageKey.connectedUserKey).then((response) {
      final id = response.orNull ?? linkedClientIDs.firstOrNull.orNull ?? '';
      _userId = id;
      return id;
    }).catchError((_) => '');
  }

  Future<void> _readCurrentCountrySuffix() async {
    await read(AppStorageKey.countrySuffixCodeKey).then((response) {
      _countrySuffix = response ?? '-civ';
    });
  }

  Future<void> save(AppStorageKey key, String value) async {
    final formattedKey = _getStorageKey(key);
    await _storage
        .write(
          key: formattedKey,
          value: value,
        )
        .then((_) => true)
        .catchError((_) => false);
  }

  Future<String?> read(
    AppStorageKey key, {
    bool avoidConcatWithUserId = false,
  }) async {
    try {
      final formattedKey = _getStorageKey(
        key,
        avoidConcatWithUserId: avoidConcatWithUserId,
      );
      return await _storage.read(key: formattedKey);
    } catch (_) {}
    return null;
  }

  Future<bool> delete(AppStorageKey key) async {
    final formattedKey = _getStorageKey(key);
    return _storage
        .delete(key: formattedKey)
        .then(
          (_) => true,
        )
        .catchError(
          (_) => false,
        );
  }

  Future<void> clearSecureStorage({String? clientId}) async {
    final keysToStayPersisted = AppStorageKey.values
        .where(
          (e) => !e.shouldBeRemovedOnLogout,
        )
        .toList();
    final dataToStayPersisted = <AppStorageKey, String>{};

    final allData = await _storage.readAll().catchError(
          (_) => <String, String>{},
        );

    for (final key in keysToStayPersisted) {
      final formattedKey = _getStorageKey(key);
      final value = allData[formattedKey];
      if (value != null) {
        dataToStayPersisted[key] = value;
      }
    }

    await _storage.deleteAll().catchError((_) => false);

    await Future.forEach(dataToStayPersisted.entries, (entry) async {
      final key = entry.key;
      final value = entry.value;
      await save(key, value);
    });

    final deletedKeys = AppStorageKey.values.where((e) => e.shouldBeRemovedOnLogout).toList();
    "Cleaned SecureStorage keys:\n \t🚮${deletedKeys.map((e) => e.key).join("\n\t🚮")}".log();
    '====================='.log();
    "Stayed SecureStorage keys:\n \t✅${keysToStayPersisted.map((e) => e.key).join("\n\t✅")}".log();
    return;
  }

  Future<void> clearHydratedStorage({bool prefixedData = false}) async {
    final keysToStayPersisted = AppHydratedStorageKeyEnum.values.where((e) => !e.prefixWithUserId).toList();
    final dataToStayPersisted = <AppHydratedStorageKeyEnum, dynamic>{};

    for (final key in keysToStayPersisted) {
      final proceededKey = useProcessHydrationKey(
        key: key,
        countrySuffix: _countrySuffix,
        userId: _userId,
      );
      try {
        final data = HydratedBloc.storage.read(proceededKey);
        if (data != null) {
          dataToStayPersisted[key] = data;
        }
      } catch (_) {}
    }

    await HydratedBloc.storage.clear();

    await Future.forEach(dataToStayPersisted.entries, (entry) async {
      final key = entry.key;
      final value = await entry.value;
      if (value != null) {
        final proceededKey = useProcessHydrationKey(
          key: key,
          countrySuffix: _countrySuffix,
          userId: _userId,
        );
        await HydratedBloc.storage.write(proceededKey, value);
      }
    });

    final deletedKeys = AppHydratedStorageKeyEnum.values.where((e) => e.prefixWithUserId).toList();

    "Cleaned Hydrated keys:\n \t🚮${deletedKeys.map((e) => e.key).join("\n\t🚮")}".log();
    '====================='.log();
    "Stayed Hydrated keys:\n \t✅${keysToStayPersisted.map((e) => e.key).join("\n\t✅")}".log();
  }

  Future<bool> clearAllStorage() async {
    final linkedClientIDs = await read(AppStorageKey.linkedUsersKey).then((value) => DP.asListOf<String>(json.decode(value ?? ''))).catchError((_) => <String>[]);
    final updated = linkedClientIDs.where((e) => e != _userId).toList();
    await clearSecureStorage();
    await clearHydratedStorage(prefixedData: true);
    await save(AppStorageKey.linkedUsersKey, json.encode(updated));
    return true;
  }

  Future<void> _initializeHydratedStorage() async {
    final storageDirectory = await getApplicationSupportDirectory();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: storageDirectory,
    );
    return;
  }

  Future<void> storeConnectedUserID(String id, {bool shouldMoveHydratedData = false}) async {
    if (id.isEmpty) return;
    _userId = id;
    final linkedClientIDs = await read(AppStorageKey.linkedUsersKey).then((value) => DP.asListOf<String>(json.decode(value ?? ''))).catchError((_) => <String>[]);
    final updated = {id, ...linkedClientIDs}.toList();
    await Future.wait([
      save(AppStorageKey.linkedUsersKey, json.encode(updated)),
      save(AppStorageKey.connectedUserKey, id),
    ]);
    return;
  }

  void unsetConnectedUserID() {
    _userId = '';
  }

  Future<void> storeCountrySuffixCode(
    String suffix,
  ) async {
    final value = suffix.replaceAll('-', '');
    if (value.isEmpty) return;
    final isUndefined = value.contains('undefined');
    if (isUndefined && _countrySuffix.isNotEmpty) return;
    _countrySuffix = isUndefined ? 'civ' : suffix;
    await save(AppStorageKey.countrySuffixCodeKey, suffix);
  }

  ///The migrate function will migrate all stored data from old app version
  ///under the one who introduce new [AppStorageService] approach.
  Future<bool> _migrateSecureStorage() async {
    final key = AppStorageKey.storageHelperHasBeenMigrated.key;
    final hasBeenMigrated = await _storage.read(key: key).then((value) {
      return DateTime.tryParse(value ?? '') != null;
    }).catchError((_) => false);

    if (hasBeenMigrated) return hasBeenMigrated;
    var previous = <AppStorageKey, String>{};

    String getOldKey(AppStorageKey key) {
      final isOldConcat = [
        key.isAuthPassCodey,
        key.isAuthUseBiometricsFromV2,
      ].contains(true);
      final isOldConcatWithUnderscore = [
        key.isLastReviewDateUserKey,
        key.isUserIsActivatedKey,
      ].contains(true);
      if (isOldConcatWithUnderscore) {
        return '${key.key}_$_userId';
      }
      if (isOldConcat) {
        return '${key.key}$_userId';
      }
      return key.key;
    }

    Future<bool> markAsMigrated() async {
      return _storage
          .write(
            key: key,
            value: DateTime.now().toIso8601String(),
          )
          .then((_) => true)
          .catchError((_) => false);
    }

    final data = await _storage.readAll().catchError((_) => <String, String>{});

    for (final entry in data.entries) {
      final key = AppStorageKey.values.firstWhere(
        (e) => getOldKey(e) == entry.key,
        orElse: () => AppStorageKey.none,
      );
      if (key.isNone) {
        continue;
      }
      previous = {
        ...previous,
        key: entry.value,
      };
    }

    //authentication_cubit
    bool getV2BiometricValue() {
      final raw = HydratedBloc.storage.read('authentication_cubit');
      final biometricSx = DP.asMapOf<String, dynamic>(raw).getOrElse('biometric', () => <String, dynamic>{});
      final value = DP.asMapOf<String, dynamic>(biometricSx).getOrElse('value', () => <String, dynamic>{});
      final enable = DP.asMapOf<String, dynamic>(value).getOrElse('enable', () => false);
      return DP.asBool(enable);
    }

    final isBiometricEnabled = getV2BiometricValue();
    if (isBiometricEnabled) {
      previous = {
        ...previous,
        AppStorageKey.authUseBiometricsFromV2: DateTime.now().toIso8601String(),
      };
    }
    if (previous.isEmpty) {
      return markAsMigrated();
    }
    await _storage.deleteAll();
    await Future.forEach(
      previous.entries,
      (element) async {
        await save(element.key, element.value);
      },
    );
    return markAsMigrated();
  }

  String get getActiveUserId {
    return _userId;
  }

  String get getActiveCountrySuffix {
    if (_countrySuffix.isEmpty || _countrySuffix.contains('undefined')) {
      return MarketIsoCodeEnum.civ.suffix;
    }
    return _countrySuffix.replaceAll('-', '');
  }
}
