import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/transactions/entities/entities.dart';
import 'package:domain/src/transactions/objects/objects.dart';
import 'package:domain/src/transactions/payloads/payloads.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class TransactionsStoreWrapper extends StoreWrapper {
  TransactionsStoreWrapper({super.identifier = 'Transactions'}) {
    //##Initializations
    _categories = StoreUnit<TransactionCategoryEntities, bool>.init(
      identifier: '_categories',
      initialValue: const [],
    );
    _transactions = StoreUnit<ClientAccountTransactionsObject, GetTransactionsPayload>.init(
      identifier: '_transactions',
      initialValue: ClientAccountTransactionsObject.empty,
    );
    _selectedTransaction = StoreUnit<TransactionEntity, bool>.init(
      identifier: '_selectedTransaction',
      initialValue: TransactionEntity.empty,
    );
    _monthlyTransactionSummaries = StoreUnit<MonthlyTransactionSummaryEntities, bool>.init(
      identifier: '_monthlyTransactionSummaries',
      initialValue: const [],
    );
  }

  //##Declarations
  late final StoreUnit<TransactionCategoryEntities, bool> _categories;
  late final StoreUnit<ClientAccountTransactionsObject, GetTransactionsPayload> _transactions;
  late final StoreUnit<TransactionEntity, bool> _selectedTransaction;
  late final StoreUnit<MonthlyTransactionSummaryEntities, bool> _monthlyTransactionSummaries;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      TransactionCategoryEntities: _categories.value,
      ClientAccountTransactionsObject: _transactions.value,
      TransactionEntity: _selectedTransaction.value,
      MonthlyTransactionSummaryEntities: _monthlyTransactionSummaries.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'value',
      ),
    );
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      TransactionCategoryEntities: _categories.stream,
      ClientAccountTransactionsObject: _transactions.stream,
      TransactionEntity: _selectedTransaction.stream,
      MonthlyTransactionSummaryEntities: _monthlyTransactionSummaries.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'stream',
      ),
    );
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      TransactionCategoryEntities: _categories.request,
      ClientAccountTransactionsObject: _transactions.request,
      TransactionEntity: _selectedTransaction.request,
      MonthlyTransactionSummaryEntities: _monthlyTransactionSummaries.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'request',
      ),
    );
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    return <Type, Stream<StoreUnitStatus>>{
      //##Status
      TransactionCategoryEntities: _categories.status,
      ClientAccountTransactionsObject: _transactions.status,
      TransactionEntity: _selectedTransaction.status,
      MonthlyTransactionSummaryEntities: _monthlyTransactionSummaries.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'status',
      ),
    );
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      TransactionCategoryEntities: (a) => _categories.sink(a as TransactionCategoryEntities),
      ClientAccountTransactionsObject: (a) => _transactions.sink(a as ClientAccountTransactionsObject),
      TransactionEntity: (a) => _selectedTransaction.sink(a as TransactionEntity),
      MonthlyTransactionSummaryEntities: (a) => _monthlyTransactionSummaries.sink(a as MonthlyTransactionSummaryEntities),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'sink',
      ),
    );
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      TransactionCategoryEntities: () => _categories.requestRefresh(args as bool),
      ClientAccountTransactionsObject: () => _transactions.requestRefresh(args as GetTransactionsPayload),
      TransactionEntity: () => _selectedTransaction.requestRefresh(args as bool),
      MonthlyTransactionSummaryEntities: () => _monthlyTransactionSummaries.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'requestRefresh',
      ),
    );
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      TransactionCategoryEntities: () => _categories.toErr(),
      ClientAccountTransactionsObject: () => _transactions.toErr(),
      TransactionEntity: () => _selectedTransaction.toErr(),
      MonthlyTransactionSummaryEntities: () => _monthlyTransactionSummaries.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'toErr',
      ),
    );
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      TransactionCategoryEntities: () => _categories.toLoading(),
      ClientAccountTransactionsObject: () => _transactions.toLoading(),
      TransactionEntity: () => _selectedTransaction.toLoading(),
      MonthlyTransactionSummaryEntities: () => _monthlyTransactionSummaries.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'toLoading',
      ),
    );
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      TransactionCategoryEntities: () => _categories.toSuccess(value as TransactionCategoryEntities?),
      ClientAccountTransactionsObject: () => _transactions.toSuccess(value as ClientAccountTransactionsObject?),
      TransactionEntity: () => _selectedTransaction.toSuccess(value as TransactionEntity?),
      MonthlyTransactionSummaryEntities: () => _monthlyTransactionSummaries.toSuccess(value as MonthlyTransactionSummaryEntities?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'toSuccess',
      ),
    );
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      TransactionCategoryEntities: () => _categories.requestRefreshAsync(args as bool) as Future<T?>,
      ClientAccountTransactionsObject: () => _transactions.requestRefreshAsync(args as GetTransactionsPayload) as Future<T?>,
      TransactionEntity: () => _selectedTransaction.requestRefreshAsync(args as bool) as Future<T?>,
      MonthlyTransactionSummaryEntities: () => _monthlyTransactionSummaries.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'TransactionsDataWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _categories.close();
    _transactions.close();
    _selectedTransaction.close();
    _monthlyTransactionSummaries.close();
  }
}
