import 'package:core/src/enums/app_hydrated_storage_key_enum.dart';
import 'package:meta/meta.dart';

@internal
String useProcessHydrationKey({
  required AppHydratedStorageKeyEnum key,
  required String countrySuffix,
  required String userId,
}) {
  if (key.prefixWithCountrySuffix && countrySuffix.isNotEmpty) {
    final k = '${key.key}$countrySuffix';
    return k;
  }
  if (key.prefixWithUserId && userId.isNotEmpty) {
    final k = '${key.key}$userId';
    return k;
  }
  return key.key;
}
