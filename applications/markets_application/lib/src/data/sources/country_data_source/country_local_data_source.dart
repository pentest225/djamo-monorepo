import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

abstract interface class CountryLocalDataSource {
  Future<String> storeCurrentCountrySuffix({required String suffix});
}

@Injectable(as: CountryLocalDataSource)
final class CountryLocalDataSourceImpl implements CountryLocalDataSource {
  CountryLocalDataSourceImpl() : _storage = sl();

  final AppStorageService _storage;

  @override
  Future<String> storeCurrentCountrySuffix({required String suffix}) {
    return _storage.storeCountrySuffixCode(suffix).then((value) => suffix);
  }
}
