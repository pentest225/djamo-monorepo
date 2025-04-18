import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/usecases/get_countries_use_case.dart';
import 'package:markets_application/src/domain/usecases/store_country_suffix_code.dart';

@injectable
class CountryUseCases {
  const CountryUseCases({
    required this.getCountries,
    required this.storeCountrySuffixCode,
  });

  final GetCountriesUseCase getCountries;
  final StoreCountrySuffixCodeUseCase storeCountrySuffixCode;
}
