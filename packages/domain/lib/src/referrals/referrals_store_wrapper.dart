import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class ReferralsStoreWrapper extends StoreWrapper {
  ReferralsStoreWrapper({super.identifier = 'Referrals'}) {
    //##Initializations
  }

  //##Declarations

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
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
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
        'toErr',
      ),
    );
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, Future<T?>>{
      //##RequestRefreshAsync
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ReferralsStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r;
  }

  @override
  void dispose() {
    //##Dispose
  }
}
