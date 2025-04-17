import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/kyc/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class KycStoreWrapper extends StoreWrapper {
  KycStoreWrapper({super.identifier = 'Kyc'}) {
    //##Initializations
    _kycDocs = StoreUnit<KYCDocumentsGroupEntity, bool>.init(
      identifier: '_kycDocs',
      initialValue: KYCDocumentsGroupEntity.empty,
    );
  }

  //##Declarations
  late final StoreUnit<KYCDocumentsGroupEntity, bool> _kycDocs;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      KYCDocumentsGroupEntity: _kycDocs.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      KYCDocumentsGroupEntity: _kycDocs.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      KYCDocumentsGroupEntity: _kycDocs.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      KYCDocumentsGroupEntity: _kycDocs.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      KYCDocumentsGroupEntity: (a) => _kycDocs.sink(a as KYCDocumentsGroupEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      KYCDocumentsGroupEntity: () => _kycDocs.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      KYCDocumentsGroupEntity: () => _kycDocs.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycDataWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      KYCDocumentsGroupEntity: () => _kycDocs.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycDataWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      KYCDocumentsGroupEntity: () => _kycDocs.toSuccess(value as KYCDocumentsGroupEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycDataWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      KYCDocumentsGroupEntity: () => _kycDocs.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('KycDataWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _kycDocs.close();
  }
}
