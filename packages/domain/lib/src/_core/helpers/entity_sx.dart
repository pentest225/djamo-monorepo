import 'dart:async';
import 'dart:developer';

import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

typedef BaseSx<T> = DomainSx<T>;

@internal
abstract class DomainSx<T> extends Equatable {
  const DomainSx({
    required this.value,
    required SxStatus status,
    required this.message,
    this.updateAt,
  }) : _status = status;

  final T value;
  final SxStatus _status;
  final String message;
  final int? updateAt;

  DomainSx<T> toInitial([T? value]);

  DomainSx<T> toLoading([T? value]);

  DomainSx<T> toSuccess(T value);

  DomainSx<T> toFailed({T? value, String message = ''});

  DomainSx<T> change(T value);

  SxStatus get status => _status;

  ///
  bool get isInitial => _status.isInitial;

  ///
  bool get isLoading => _status.isLoading;

  ///
  bool get isRefresh => _status.isRefresh;

  ///
  bool get isSuccess => _status.isSuccess;

  ///
  bool get isFailed => _status.isFailed;

  ///
  bool get hasMessage => message.isNotEmpty;

  int? get getMinSinceLastUpdate {
    if (updateAt == null) {
      return null;
    }
    //differenceInMinutes
    return DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(updateAt!)).inMinutes;
  }

  DateTime? get getUpdateAt {
    if (updateAt == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(updateAt!);
  }

  bool _hasBeenUpdatedInLastMinutesOf({
    required int minutes,
    bool Function(T value)? cacheIsValidWhen,
  }) {
    if (minutes == 0) {
      return false;
    }
    final lastUpdatedTime = getMinSinceLastUpdate;
    if (lastUpdatedTime == null) {
      return false;
    }
    return (cacheIsValidWhen?.call(value) ?? true) && lastUpdatedTime < minutes;
  }

  @override
  String toString() {
    return 'StateVariable('
        'status: $_status, '
        'value: $value, '
        'updateAt: $updateAt, '
        'message: $message )';
  }

  @override
  List<Object?> get props => [
        value,
        message,
        _status,
        updateAt,
      ];
}

mixin _SxMixin<T> on DomainSx<T> {
  /// Executes the given process function based on the provided condition.
  ///
  /// \[process\] - The function to execute.
  /// \[when\] - A function that determines if the process should be executed based on the current status and value.
  void processWhen({
    required void Function() process,
    required bool Function(SxStatus, T) when,
  }) {
    if (when.call(status, value)) {
      process();
    }
  }

  /// Executes the given process function once based on the cache status.
  ///
  /// If the current state is initial or failed, or if the cache duration is less than or equal to zero,
  /// the process function is executed immediately. Otherwise, it checks if the cache has been updated
  /// within the specified duration and if the cache is still valid based on the invalidateCacheWhen function.
  /// If the cache is not valid or has not been updated recently, the process function is executed.
  /// Otherwise, the optional or function is called with the current value.
  ///
  /// \[process\] - The function to execute.
  /// \[invalidateCacheWhen\] - A function that determines if the cache should be invalidated based on the current status and value.
  /// \[or\] - An optional function to call with the current value if the cache is valid and has been updated recently.
  /// \[cacheDurationInMinutes\] - The duration in minutes for which the cache is considered valid.
  void once({
    required void Function() process,
    required bool Function(SxStatus, T) invalidateCacheWhen,
    void Function(T)? or,
    int cacheDurationInMinutes = 0,
  }) {
    if (isInitial || isFailed || cacheDurationInMinutes <= 0) {
      process();
      return;
    }
    final updatedRecently = _hasBeenUpdatedInLastMinutesOf(
      minutes: cacheDurationInMinutes,
      cacheIsValidWhen: (v) {
        return !invalidateCacheWhen.call(status, v);
      },
    );
    if (!updatedRecently) {
      process();
      return;
    }
    or?.call(value);
  }

  Future<R> onceAsTask<R>({
    required Future<R> Function() process,
    required bool Function(SxStatus, T) invalidateCacheWhen,
    required R Function(T) or,
    int cacheDurationInMinutes = 0,
  }) {
    final completer = Completer<R>();
    once(
      process: () {
        process().then(completer.complete).catchError(completer.completeError);
      },
      invalidateCacheWhen: invalidateCacheWhen,
      or: (t) {
        completer.complete(or.call(t));
      },
      cacheDurationInMinutes: cacheDurationInMinutes,
    );
    return completer.future;
  }
}

mixin _SxEncodeMixin<T> on DomainSx<T> {
  Map<String, dynamic> toJson();
}

typedef SxProcessing = Sx<bool>;

class Sx<T> extends DomainSx<T> with _SxMixin<T> {
  const Sx({
    required super.value,
    super.status = SxStatus.initial,
    super.message = '',
    super.updateAt,
  });

  factory Sx.fromJson(
    Map<String, dynamic> json, {
    required T orDefault,
    T Function(dynamic value)? decoder,
  }) {
    try {
      return Sx(
        value: decoder?.call(json['value']) ?? orDefault,
        status: SxStatus.values[DP.asInt(json['status'])],
        message: DP.asString(json['message']),
        updateAt: json['updateAt'] as int?,
      );
    } catch (e, __) {
      return Sx(value: orDefault);
    }
  }

  @override
  Sx<T> toInitial([T? value]) => Sx(
        value: value ?? this.value,
      );

  @override
  Sx<T> toLoading([T? value]) => Sx(
        value: value ?? this.value,
        status: SxStatus.loading,
        updateAt: updateAt,
      );

  @override
  Sx<T> toSuccess(T value) => Sx(
        value: value,
        status: SxStatus.success,
        updateAt: DateTime.now().toUtc().millisecondsSinceEpoch,
      );

  @override
  Sx<T> toFailed({T? value, String message = ''}) => Sx(
        value: value ?? this.value,
        status: SxStatus.failed,
        message: message,
        updateAt: updateAt,
      );

  @override
  Sx<T> change(T value) => Sx(
        value: value,
        status: _status,
        message: message,
        updateAt: updateAt,
      );

  Map<String, dynamic> toJson({required Object Function(T value) encoder}) {
    final encodedValue = encoder(value);
    return {
      'value': encodedValue,
      'message': message,
      'status': _status.isLoading ? SxStatus.initial.index : _status.index,
      'updateAt': updateAt,
    };
  }
}

///
class EntitySx<T extends BaseEntity> extends DomainSx<T> with _SxMixin<T>, _SxEncodeMixin<T> {
  ///
  const EntitySx({
    required super.value,
    super.message = '',
    super.updateAt,
    super.status = SxStatus.initial,
  });

  factory EntitySx.fromJson(
    Map<String, dynamic> json, {
    required T orDefault,
  }) {
    try {
      return EntitySx(
        value: deserialize(DP.asMap(json['value'])) ?? orDefault,
        status: json['status'] != null ? SxStatus.values[json['status'] as int] : SxStatus.initial,
        message: json['message'] != null ? json['message'] as String : '',
        updateAt: json['updateAt'] != null ? json['updateAt'] as int : null,
      );
    } catch (e, stack) {
      log('$e\n$stack');
      return EntitySx(value: orDefault);
    }
  }

  @override
  EntitySx<T> toInitial([T? value]) => EntitySx(
        value: value ?? this.value,
      );

  @override
  EntitySx<T> toLoading([T? value]) => EntitySx(
        value: value ?? this.value,
        status: SxStatus.loading,
        updateAt: updateAt,
      );

  @override
  EntitySx<T> toSuccess(T value) => EntitySx(
        value: value,
        status: SxStatus.success,
        updateAt: DateTime.now().toUtc().millisecondsSinceEpoch,
      );

  @override
  EntitySx<T> toFailed({T? value, String message = ''}) => EntitySx(
        value: value ?? this.value,
        status: SxStatus.failed,
        message: message,
        updateAt: updateAt,
      );

  @override
  EntitySx<T> change(T value) => EntitySx(
        value: value,
        status: _status,
        message: message,
        updateAt: updateAt,
      );

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': serialize(value),
      'message': message,
      'status': _status.isLoading ? SxStatus.initial.index : _status.index,
      'updateAt': updateAt,
    };
  }
}

class EntitiesSx<T extends BaseEntity> extends DomainSx<List<T>> with _SxMixin<List<T>>, _SxEncodeMixin<List<T>> {
  const EntitiesSx({
    required super.value,
    super.status = SxStatus.initial,
    super.message = '',
    super.updateAt,
  });

  factory EntitiesSx.fromJson(
    Map<String, dynamic> json, {
    List<T> orDefault = const [],
  }) {
    try {
      return EntitiesSx(
        value: deserializes<T>(List<JsonMap>.from(DP.asListOf<dynamic>(json['value']))),
        status: json['status'] != null ? SxStatus.values[json['status'] as int] : SxStatus.initial,
        message: json['message'] != null ? json['message'] as String : '',
        updateAt: json['updateAt'] != null ? json['updateAt'] as int : null,
      );
    } catch (e, stack) {
      log('$e\n$stack');
      return EntitiesSx(value: orDefault);
    }
  }

  @override
  EntitiesSx<T> change(List<T> value) => EntitiesSx(
        value: value,
        status: _status,
        message: message,
        updateAt: updateAt,
      );

  @override
  EntitiesSx<T> toFailed({List<T>? value, String message = ''}) => EntitiesSx(
        value: value ?? this.value,
        status: SxStatus.failed,
        message: message,
        updateAt: updateAt,
      );

  @override
  EntitiesSx<T> toInitial([List<T>? value]) => EntitiesSx(
        value: value ?? this.value,
      );

  @override
  EntitiesSx<T> toLoading([List<T>? value]) => EntitiesSx(
        value: value ?? this.value,
        status: SxStatus.loading,
        updateAt: updateAt,
      );

  @override
  EntitiesSx<T> toSuccess(List<T> value) => EntitiesSx(
        value: value,
        status: SxStatus.success,
        updateAt: DateTime.now().toUtc().millisecondsSinceEpoch,
      );

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': serializes(value),
      'message': message,
      'status': _status.isLoading ? SxStatus.initial.index : _status.index,
      'updateAt': updateAt,
    };
  }
}

class EntityMapSx<T extends BaseEntity> extends DomainSx<Map<String, T>> with _SxMixin<Map<String, T>>, _SxEncodeMixin<Map<String, T>> {
  const EntityMapSx({
    required super.value,
    super.message = '',
    super.updateAt,
    super.status = SxStatus.initial,
  });

  factory EntityMapSx.fromJson(
    Map<String, dynamic> json, {
    Map<String, T> orDefault = const {},
  }) {
    try {
      final value = Map<String, JsonMap>.from(
        DP.asMap(json['value']).map(
          (key, value) {
            return MapEntry(key, DP.asMap(value));
          },
        ),
      );
      return EntityMapSx<T>(
        value: deserializeMap<T>(value),
        status: json['status'] != null ? SxStatus.values[json['status'] as int] : SxStatus.initial,
        message: json['message'] != null ? json['message'] as String : '',
        updateAt: json['updateAt'] != null ? json['updateAt'] as int : null,
      );
    } catch (e, stackTrace) {
      log('$e\n$stackTrace');
      return EntityMapSx(value: orDefault);
    }
  }

  @override
  EntityMapSx<T> change(Map<String, T> value) {
    return EntityMapSx(
      value: value,
      status: _status,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  EntityMapSx<T> toFailed({Map<String, T>? value, String message = ''}) {
    return EntityMapSx(
      value: value ?? this.value,
      status: SxStatus.failed,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  EntityMapSx<T> toInitial([Map<String, T>? value]) {
    return EntityMapSx(
      value: value ?? this.value,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': serializeMap(value),
      'message': message,
      'status': _status.isLoading ? SxStatus.initial.index : _status.index,
      'updateAt': updateAt,
    };
  }

  @override
  EntityMapSx<T> toLoading([Map<String, T>? value]) {
    return EntityMapSx(
      value: value ?? this.value,
      status: SxStatus.loading,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  EntityMapSx<T> toSuccess(Map<String, T> value) {
    return EntityMapSx(
      value: value,
      status: SxStatus.success,
      message: message,
      updateAt: DateTime.now().toUtc().millisecondsSinceEpoch,
    );
  }
}

class EntitiesMapSx<T extends BaseEntity> extends DomainSx<Map<String, List<T>>> with _SxMixin<Map<String, List<T>>>, _SxEncodeMixin<Map<String, List<T>>> {
  const EntitiesMapSx({
    required super.value,
    super.message = '',
    super.updateAt,
    super.status = SxStatus.initial,
  });

  factory EntitiesMapSx.fromJson(
    Map<String, dynamic> json, {
    Map<String, List<T>> orDefault = const {},
  }) {
    try {
      final value = Map<String, List<JsonMap>>.from(
        DP.asMap(json['value']).map(
          (key, value) {
            return MapEntry(key, DP.asListOf<JsonMap>(value));
          },
        ),
      );
      return EntitiesMapSx<T>(
        value: deserializeMapList<T>(value),
        status: json['status'] != null ? SxStatus.values[json['status'] as int] : SxStatus.initial,
        message: json['message'] != null ? json['message'] as String : '',
        updateAt: json['updateAt'] != null ? json['updateAt'] as int : null,
      );
    } catch (e, stack) {
      log('$e\n$stack');
      return EntitiesMapSx(value: orDefault);
    }
  }

  @override
  EntitiesMapSx<T> change(Map<String, List<T>> value) {
    return EntitiesMapSx(
      value: value,
      status: _status,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  EntitiesMapSx<T> toFailed({Map<String, List<T>>? value, String message = ''}) {
    return EntitiesMapSx(
      value: value ?? this.value,
      status: SxStatus.failed,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  EntitiesMapSx<T> toInitial([Map<String, List<T>>? value]) {
    return EntitiesMapSx(
      value: value ?? this.value,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': serializeMapList(value),
      'message': message,
      'status': _status.isLoading ? SxStatus.initial.index : _status.index,
      'updateAt': updateAt,
    };
  }

  @override
  EntitiesMapSx<T> toLoading([Map<String, List<T>>? value]) {
    return EntitiesMapSx(
      value: value ?? this.value,
      status: SxStatus.loading,
      message: message,
      updateAt: updateAt,
    );
  }

  @override
  EntitiesMapSx<T> toSuccess(Map<String, List<T>> value) {
    return EntitiesMapSx(
      value: value,
      status: SxStatus.success,
      message: message,
      updateAt: DateTime.now().toUtc().millisecondsSinceEpoch,
    );
  }
}

@protected
extension SxStatusX on SxStatus {
  bool get isInitial => this == SxStatus.initial;
  bool get isLoading => this == SxStatus.loading;
  bool get isSuccess => this == SxStatus.success;
  bool get isFailed => this == SxStatus.failed;
  bool get isRefresh => this == SxStatus.refresh;
}

enum SxStatus {
  initial,
  loading,
  success,
  failed,
  refresh,
}

void useProcessEntitySx() {}
