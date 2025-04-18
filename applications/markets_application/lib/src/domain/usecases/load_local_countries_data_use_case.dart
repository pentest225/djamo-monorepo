import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/repositories/repositories.dart';
import 'package:usecases_core/usecases_core.dart';

@injectable
final class LoadLocalCountriesDataUseCase implements UseCaseContract<CountryEntities, NoParams> {
  const LoadLocalCountriesDataUseCase({
    required MarketsRepository repository,
  }) : _repository = repository;

  final MarketsRepository _repository;

  @override
  Future<CountryEntities> call(NoParams params) {
    return _repository.loadLocalCountriesData();
  }
}
