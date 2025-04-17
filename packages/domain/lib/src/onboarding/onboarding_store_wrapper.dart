import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/onboarding/payloads/payloads.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class OnboardingStoreWrapper extends StoreWrapper {
  OnboardingStoreWrapper({super.identifier = 'Onboarding'}) {
    //##Initializations
    _payload = StoreUnit<RegisterClientPayload, bool>.init(identifier: '_payload', initialValue: RegisterClientPayload.empty);
  }

  //##Declarations
  late final StoreUnit<RegisterClientPayload, bool> _payload;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      RegisterClientPayload: _payload.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      RegisterClientPayload: _payload.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      RegisterClientPayload: _payload.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      RegisterClientPayload: _payload.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      RegisterClientPayload: (a) => _payload.sink(a as RegisterClientPayload),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      RegisterClientPayload: () => _payload.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      RegisterClientPayload: () => _payload.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      RegisterClientPayload: () => _payload.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      RegisterClientPayload: () => _payload.toSuccess(value as RegisterClientPayload?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      RegisterClientPayload: () => _payload.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('OnboardingDataWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _payload.close();
  }
}
