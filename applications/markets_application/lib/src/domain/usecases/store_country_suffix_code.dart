import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:markets_application/src/domain/repositories/repositories.dart';
import 'package:usecases_core/usecases_core.dart';

@injectable
class StoreCountrySuffixCodeUseCase implements UseCaseContract<String, StoreCountrySuffixCodeParams> {
  const StoreCountrySuffixCodeUseCase({
    required MarketsRepository repository,
  }) : _repository = repository;

  final MarketsRepository _repository;

  @override
  Future<String> call(StoreCountrySuffixCodeParams params) {
    return _repository.storeCountrySuffixCode(suffix: params.suffix);
  }
}

class StoreCountrySuffixCodeParams extends Equatable {
  const StoreCountrySuffixCodeParams({
    required this.suffix,
  });
  final String suffix;

  @override
  List<Object> get props => [suffix];
}
