import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/orders/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class OrdersStoreWrapper extends StoreWrapper {
  OrdersStoreWrapper({super.identifier = 'Orders'}) {
    //##Initializations
    _orders = StoreUnit<OrderEntities, bool>.init(identifier: '_orders', initialValue: const []);
    _currentOrder = StoreUnit<OrderEntity, bool>.init(identifier: '_currentOrder', initialValue: OrderEntity.empty);
  }

  //##Declarations
  late final StoreUnit<OrderEntities, bool> _orders;
  late final StoreUnit<OrderEntity, bool> _currentOrder;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      OrderEntities: _orders.value,
      OrderEntity: _currentOrder.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      OrderEntities: _orders.stream,
      OrderEntity: _currentOrder.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      OrderEntities: _orders.request,
      OrderEntity: _currentOrder.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      OrderEntities: _orders.status,
      OrderEntity: _currentOrder.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      OrderEntities: (a) => _orders.sink(a as OrderEntities),
      OrderEntity: (a) => _currentOrder.sink(a as OrderEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      OrderEntities: () => _orders.requestRefresh(args as bool),
      OrderEntity: () => _currentOrder.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      OrderEntities: () => _orders.toErr(),
      OrderEntity: () => _currentOrder.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      OrderEntities: () => _orders.toLoading(),
      OrderEntity: () => _currentOrder.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      OrderEntities: () => _orders.toSuccess(value as OrderEntities?),
      OrderEntity: () => _currentOrder.toSuccess(value as OrderEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      OrderEntities: () => _orders.requestRefreshAsync(args as bool) as Future<T?>,
      OrderEntity: () => _currentOrder.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OrdersStoreWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _orders.close();
    _currentOrder.close();
  }
}
