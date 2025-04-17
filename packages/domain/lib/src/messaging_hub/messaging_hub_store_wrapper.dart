import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/messaging_hub/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class MessagingHubStoreWrapper extends StoreWrapper {
  MessagingHubStoreWrapper({super.identifier = 'MessagingHub'}) {
//##Initializations
    _tooltips = StoreUnit<TooltipMessageEntities, bool>.init(
      identifier: '_tooltips',
      initialValue: const [],
    );
    _unReadNotificationsCounter = StoreUnit<int, bool>.init(identifier: '_unReadCounter', initialValue: 0);
  }

//##Declarations
  late final StoreUnit<TooltipMessageEntities, bool> _tooltips;
  late final StoreUnit<int, bool> _unReadNotificationsCounter;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
//##Value
      TooltipMessageEntities: _tooltips.value,
      int: _unReadNotificationsCounter.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: _tooltips.stream,
      int: _unReadNotificationsCounter.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: _tooltips.request,
      int: _unReadNotificationsCounter.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: _tooltips.status,
      int: _unReadNotificationsCounter.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: (a) => _tooltips.sink(a as TooltipMessageEntities),
      int: (T data) => _unReadNotificationsCounter.sink(data as int),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: () => _tooltips.requestRefresh(args as bool),
      int: () => _unReadNotificationsCounter.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: () => _tooltips.toLoading(),
      int: () => _unReadNotificationsCounter.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: () => _tooltips.toSuccess(value as TooltipMessageEntities?),
      int: () => _unReadNotificationsCounter.toSuccess(value as int?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: () => _tooltips.toErr(),
      int: () => _unReadNotificationsCounter.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
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
      TooltipMessageEntities: () => _tooltips.requestRefreshAsync(args as bool) as Future<T?>,
      int: () => _unReadNotificationsCounter.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'MessagingHubStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
//##Dispose
    _tooltips.close();
    _unReadNotificationsCounter.close();
  }
}
