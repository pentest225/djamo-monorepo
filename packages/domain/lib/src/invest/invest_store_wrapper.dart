import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/invest/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class InvestStoreWrapper extends StoreWrapper {
  InvestStoreWrapper({super.identifier = 'Invest'}) {
    //##Initializations
    _account = StoreUnit<InvestAccountEntity, bool>.init(
      identifier: '_account',
      initialValue: InvestAccountEntity.empty,
    );
    _cashback = StoreUnit<InvestCashbackEntities, bool>.init(
      identifier: '_cashbacks',
      initialValue: const [],
    );
    _products = StoreUnit<InvestProductEntities, bool>.init(
      identifier: '_products',
      initialValue: const [],
    );
  }

  //##Declarations
  late final StoreUnit<InvestAccountEntity, bool> _account;
  late final StoreUnit<InvestCashbackEntities, bool> _cashback;
  late final StoreUnit<InvestProductEntities, bool> _products;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      InvestAccountEntity: _account.value,
      InvestCashbackEntities: _cashback.value,
      InvestProductEntities: _products.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: _account.stream,
      InvestCashbackEntities: _cashback.stream,
      InvestProductEntities: _products.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: _account.request,
      InvestCashbackEntities: _cashback.request,
      InvestProductEntities: _products.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: _account.status,
      InvestCashbackEntities: _cashback.status,
      InvestProductEntities: _products.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: (a) => _account.sink(a as InvestAccountEntity),
      InvestCashbackEntities: (a) => _cashback.sink(a as InvestCashbackEntities),
      InvestProductEntities: (a) => _products.sink(a as InvestProductEntities),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: () => _account.requestRefresh(args as bool),
      InvestCashbackEntities: () => _cashback.requestRefresh(args as bool),
      InvestProductEntities: () => _products.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: () => _account.toLoading(),
      InvestCashbackEntities: () => _cashback.toLoading(),
      InvestProductEntities: () => _products.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: () => _account.toSuccess(value as InvestAccountEntity?),
      InvestCashbackEntities: () => _cashback.toSuccess(value as InvestCashbackEntities?),
      InvestProductEntities: () => _products.toSuccess(value as InvestProductEntities?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: () => _account.toErr(),
      InvestCashbackEntities: () => _cashback.toErr(),
      InvestProductEntities: () => _products.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
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
      InvestAccountEntity: () => _account.requestRefreshAsync(args as bool) as Future<T?>,
      InvestCashbackEntities: () => _cashback.requestRefreshAsync(args as bool) as Future<T?>,
      InvestProductEntities: () => _products.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'InvestStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _account.close();
    _cashback.close();
    _products.close();
  }
}
