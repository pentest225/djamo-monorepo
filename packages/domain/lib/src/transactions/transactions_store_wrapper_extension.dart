import 'package:domain/src/transactions/entities/transaction_category_entity.dart';
import 'package:domain/src/transactions/transactions_store_wrapper.dart';

extension TransactionsStoreWrapperX on TransactionsStoreWrapper {
  void requestRefreshForTransactionCategories() {
    requestRefresh<TransactionCategoryEntities, bool>(true);
  }
}
