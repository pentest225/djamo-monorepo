import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/budget/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class BudgetStoreWrapper extends StoreWrapper {
  BudgetStoreWrapper({super.identifier = 'Budget'}) {
    //##Initializations
    _budgets = StoreUnit<BudgetEntities, bool>.init(
      identifier: '_budgets',
      initialValue: const [],
    );
  }

  //##Declarations
  late final StoreUnit<BudgetEntities, bool> _budgets;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      BudgetEntities: _budgets.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
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
      BudgetEntities: _budgets.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
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
      BudgetEntities: _budgets.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
        'request',
      ),
    );
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      BudgetEntities: _budgets.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
        'status',
      ),
    );
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      BudgetEntities: (a) => _budgets.sink(a as BudgetEntities),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
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
      BudgetEntities: () => _budgets.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
        'requestRefresh',
      ),
    );
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      BudgetEntities: () => _budgets.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
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
      BudgetEntities: () => _budgets.toSuccess(value as BudgetEntities?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
        'toSuccess',
      ),
    );
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      BudgetEntities: () => _budgets.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
        'toErr',
      ),
    );
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      BudgetEntities: () => _budgets.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'BudgetStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _budgets.close();
  }
}
