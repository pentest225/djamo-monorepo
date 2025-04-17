import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/subscriptions/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
class SubscriptionsStoreWrapper extends StoreWrapper {
  SubscriptionsStoreWrapper({super.identifier = 'Subscriptions'}) {
    //##Initializations
    _subscriptions = StoreUnit<PaymentSubscriptionEntities, bool>.init(
      identifier: '_subscriptions',
      initialValue: const [],
    );
    _earliestSubscription = StoreUnit<PaymentSubscriptionEntity, bool>.init(
      identifier: '_earliestSubscription',
      initialValue: PaymentSubscriptionEntity.empty,
    );
  }

  //##Declarations
  late final StoreUnit<PaymentSubscriptionEntities, bool> _subscriptions;
  late final StoreUnit<PaymentSubscriptionEntity, bool> _earliestSubscription;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      PaymentSubscriptionEntities: _subscriptions.value,
      PaymentSubscriptionEntity: _earliestSubscription.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: _subscriptions.stream,
      PaymentSubscriptionEntity: _earliestSubscription.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: _subscriptions.request,
      PaymentSubscriptionEntity: _earliestSubscription.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: _subscriptions.status,
      PaymentSubscriptionEntity: _earliestSubscription.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: (a) => _subscriptions.sink(a as PaymentSubscriptionEntities),
      PaymentSubscriptionEntity: (a) => _earliestSubscription.sink(a as PaymentSubscriptionEntity),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: () => _subscriptions.requestRefresh(args as bool),
      PaymentSubscriptionEntity: () => _earliestSubscription.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: () => _subscriptions.toLoading(),
      PaymentSubscriptionEntity: () => _earliestSubscription.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: () => _subscriptions.toSuccess(value as PaymentSubscriptionEntities?),
      PaymentSubscriptionEntity: () => _earliestSubscription.toSuccess(value as PaymentSubscriptionEntity?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: () => _subscriptions.toErr(),
      PaymentSubscriptionEntity: () => _earliestSubscription.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
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
      PaymentSubscriptionEntities: () => _subscriptions.requestRefreshAsync(args as bool) as Future<T?>,
      PaymentSubscriptionEntity: () => _earliestSubscription.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'SubscriptionsStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _subscriptions.close();
    _earliestSubscription.close();
  }
}
