import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/bills/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class BillsStoreWrapper extends StoreWrapper {
  BillsStoreWrapper({super.identifier = 'Bills'}) {
    //##Initializations
    _billCustomerSubscriptionReferenceEntities = StoreUnit<List<BillCustomerSubscriptionReferenceEntity>, String>.init(
      identifier: '_billCustomerSubscriptionReferenceEntities',
      initialValue: const [],
    );
  }

  //##Declarations
  late final StoreUnit<List<BillCustomerSubscriptionReferenceEntity>, String> _billCustomerSubscriptionReferenceEntities;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      List<BillCustomerSubscriptionReferenceEntity>: _billCustomerSubscriptionReferenceEntities.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      List<BillCustomerSubscriptionReferenceEntity>: _billCustomerSubscriptionReferenceEntities.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      List<BillCustomerSubscriptionReferenceEntity>: _billCustomerSubscriptionReferenceEntities.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      List<BillCustomerSubscriptionReferenceEntity>: (a) => _billCustomerSubscriptionReferenceEntities.sink(a as List<BillCustomerSubscriptionReferenceEntity>),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Request
      List<BillCustomerSubscriptionReferenceEntity>: () => _billCustomerSubscriptionReferenceEntities.requestRefresh(args as String),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      List<BillCustomerSubscriptionReferenceEntity>: () => _billCustomerSubscriptionReferenceEntities.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      List<BillCustomerSubscriptionReferenceEntity>: () => _billCustomerSubscriptionReferenceEntities.toSuccess(value as List<BillCustomerSubscriptionReferenceEntity>?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'toSuccess'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      List<BillCustomerSubscriptionReferenceEntity>: () => _billCustomerSubscriptionReferenceEntities.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'toErr'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      List<BillCustomerSubscriptionReferenceEntity>: () => _billCustomerSubscriptionReferenceEntities.requestRefreshAsync(args as String) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('BillsStoreWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _billCustomerSubscriptionReferenceEntities.close();
  }
}
