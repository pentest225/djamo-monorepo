import 'package:domain/domain.dart';
import 'package:usecases_core/src/contracts/contracts.dart';

abstract interface class GetTransactionsUseCase implements UseCaseContract<PaginatedTransactionResponse, GetTransactionsPayload> {}
