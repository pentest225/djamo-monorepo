import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/repositories/repositories.dart';
import 'package:usecases_core/usecases_core.dart';

@injectable

/// getPosByCity use case
class GetLocationByCityUseCase implements UseCaseContract<LocationEntities, GetLocationByCityPayload> {
  /// getPosByCity use case constructor
  const GetLocationByCityUseCase({
    required MarketsRepository repository,
  }) : _repository = repository;

  final MarketsRepository _repository;

  @override
  Future<LocationEntities> call(GetLocationByCityPayload params) {
    return _repository.getLocationByCity(payload: params);
  }
}
