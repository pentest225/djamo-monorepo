import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/repositories/repositories.dart';
import 'package:usecases_core/usecases_core.dart';

@injectable

/// getPos use case
class GetPosUseCase implements UseCaseContract<LocationEntities, GetPOSPayload> {
  /// getPos use case constructor
  const GetPosUseCase({
    required MarketsRepository repository,
  }) : _repository = repository;

  final MarketsRepository _repository;

  @override
  Future<LocationEntities> call(GetPOSPayload params) {
    return _repository.getPos(payload: params);
  }
}
