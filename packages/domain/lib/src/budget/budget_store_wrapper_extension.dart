import 'package:domain/src/budget/budget_store_wrapper.dart';
import 'package:domain/src/budget/entities/budget_entity.dart';

extension BudgetStoreWrapperX on BudgetStoreWrapper {
  void requestRefreshForBudgets() {
    requestRefresh<BudgetEntities, bool>(true);
  }
}
