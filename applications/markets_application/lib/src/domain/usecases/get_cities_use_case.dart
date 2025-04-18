import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/repositories/repositories.dart';
import 'package:usecases_core/usecases_core.dart';


@injectable

/// getCities use case
class GetCitiesUseCase implements UseCaseContract<CityEntities, GetCitiesPayload> {
  /// getCities use case constructor
  const GetCitiesUseCase({
    required MarketsRepository repository,
  }) : _repository = repository;

  final MarketsRepository _repository;

  @override
  Future<CityEntities> call(GetCitiesPayload params) {
    return _repository.getCities(payload: params);
  }
}
