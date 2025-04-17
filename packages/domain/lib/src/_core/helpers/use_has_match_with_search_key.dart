import 'package:diacritic/diacritic.dart';

/// Returns `true` if the [key] has a match with the [field].
bool useHasMatchWithSearchKey({required String key, required String field}) {
  if (key.isEmpty || field.isEmpty) return false;
  final dSplit = field.split(' ').where((e) => e.isNotEmpty).toList();
  final k = removeDiacritics(key.toLowerCase().trim());
  final startWith = dSplit.any((element) => element.toLowerCase().trim().startsWith(k));
  if (startWith) return true;
  return dSplit.any((element) => element.toLowerCase().trim().contains(k));
}
