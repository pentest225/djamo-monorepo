import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/beneficiaries/entities/entities.dart';
import 'package:domain/src/beneficiaries/objects/objects.dart';

final class BeneficiariesStoreWrapper extends StoreWrapper {
  BeneficiariesStoreWrapper({super.identifier = 'Contacts'}) {
    //##Initializations
    _activeP2PBeneficiary = StoreUnit<P2PBeneficiaryEntity, String>.init(
      identifier: '_activeP2PBeneficiary',
      initialValue: P2PBeneficiaryEntity.empty,
    );
    _billAccountReferences = StoreUnit<ClientBillAccountReferenceWorkingBook, bool>.init(
      identifier: '_billAccountReferences',
      initialValue: const {},
    );
    _contacts = StoreUnit<PhoneNumberWorkingBookWithMarketIsoCode, bool>.init(
      identifier: '_contacts',
      initialValue: const {},
    );
    _beneficiaries = StoreUnit<Map<String, BeneficiaryEntities>, bool>.init(
      identifier: '_beneficiaries',
      initialValue: const {},
    );
    _cashInCustomPhoneNumbers = StoreUnit<CashInCustomPhoneNumberWorkingBook, String>.init(
      identifier: '_cashInCustomPhoneNumbers',
      initialValue: const {},
    );
  }

  //##Declarations
  late final StoreUnit<P2PBeneficiaryEntity, String> _activeP2PBeneficiary;
  late final StoreUnit<ClientBillAccountReferenceWorkingBook, bool> _billAccountReferences;
  late final StoreUnit<PhoneNumberWorkingBookWithMarketIsoCode, bool> _contacts;
  late final StoreUnit<Map<String, BeneficiaryEntities>, bool> _beneficiaries;
  late final StoreUnit<CashInCustomPhoneNumberWorkingBook, String> _cashInCustomPhoneNumbers;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      P2PBeneficiaryEntity: _activeP2PBeneficiary.value,
      ClientBillAccountReferenceWorkingBook: _billAccountReferences.value,
      Map<String, BeneficiaryEntities>: _beneficiaries.value,
      CashInCustomPhoneNumberWorkingBook: _cashInCustomPhoneNumbers.value,
      PhoneNumberWorkingBookWithMarketIsoCode: _contacts.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: _activeP2PBeneficiary.stream,
      ClientBillAccountReferenceWorkingBook: _billAccountReferences.stream,
      Map<String, BeneficiaryEntities>: _beneficiaries.stream,
      CashInCustomPhoneNumberWorkingBook: _cashInCustomPhoneNumbers.stream,
      PhoneNumberWorkingBookWithMarketIsoCode: _contacts.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: _activeP2PBeneficiary.request,
      ClientBillAccountReferenceWorkingBook: _billAccountReferences.request,
      Map<String, BeneficiaryEntities>: _beneficiaries.request,
      CashInCustomPhoneNumberWorkingBook: _cashInCustomPhoneNumbers.request,
      PhoneNumberWorkingBookWithMarketIsoCode: _contacts.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: _activeP2PBeneficiary.status,
      ClientBillAccountReferenceWorkingBook: _billAccountReferences.status,
      Map<String, BeneficiaryEntities>: _beneficiaries.status,
      CashInCustomPhoneNumberWorkingBook: _cashInCustomPhoneNumbers.status,
      PhoneNumberWorkingBookWithMarketIsoCode: _contacts.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: (a) => _activeP2PBeneficiary.sink(a as P2PBeneficiaryEntity),
      ClientBillAccountReferenceWorkingBook: (a) => _billAccountReferences.sink(a as ClientBillAccountReferenceWorkingBook),
      Map<String, BeneficiaryEntities>: (a) => _beneficiaries.sink(a as Map<String, BeneficiaryEntities>),
      CashInCustomPhoneNumberWorkingBook: (a) => _cashInCustomPhoneNumbers.sink(a as CashInCustomPhoneNumberWorkingBook),
      PhoneNumberWorkingBookWithMarketIsoCode: (a) => _contacts.sink(a as PhoneNumberWorkingBookWithMarketIsoCode),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: () => _activeP2PBeneficiary.requestRefresh(args as String),
      ClientBillAccountReferenceWorkingBook: () => _billAccountReferences.requestRefresh(args as bool),
      Map<String, BeneficiaryEntities>: () => _beneficiaries.requestRefresh(args as bool),
      CashInCustomPhoneNumberWorkingBook: () => _cashInCustomPhoneNumbers.requestRefresh(args as String? ?? ''),
      PhoneNumberWorkingBookWithMarketIsoCode: () => _contacts.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: () => _activeP2PBeneficiary.toErr(),
      ClientBillAccountReferenceWorkingBook: () => _billAccountReferences.toErr(),
      Map<String, BeneficiaryEntities>: () => _beneficiaries.toErr(),
      CashInCustomPhoneNumberWorkingBook: () => _cashInCustomPhoneNumbers.toErr(),
      PhoneNumberWorkingBookWithMarketIsoCode: () => _contacts.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: () => _activeP2PBeneficiary.toLoading(),
      ClientBillAccountReferenceWorkingBook: () => _billAccountReferences.toLoading(),
      Map<String, BeneficiaryEntities>: () => _beneficiaries.toLoading(),
      CashInCustomPhoneNumberWorkingBook: () => _cashInCustomPhoneNumbers.toLoading(),
      PhoneNumberWorkingBookWithMarketIsoCode: () => _contacts.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: () => _activeP2PBeneficiary.toSuccess(value as P2PBeneficiaryEntity?),
      ClientBillAccountReferenceWorkingBook: () => _billAccountReferences.toSuccess(value as ClientBillAccountReferenceWorkingBook?),
      Map<String, BeneficiaryEntities>: () => _beneficiaries.toSuccess(value as Map<String, BeneficiaryEntities>?),
      CashInCustomPhoneNumberWorkingBook: () => _cashInCustomPhoneNumbers.toSuccess(value as Map<String, CashInCustomPhoneNumberEntity>?),
      PhoneNumberWorkingBookWithMarketIsoCode: () => _contacts.toSuccess(value as PhoneNumberWorkingBookWithMarketIsoCode?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
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
      P2PBeneficiaryEntity: () => _activeP2PBeneficiary.requestRefreshAsync(args as String) as Future<T?>,
      ClientBillAccountReferenceWorkingBook: () => _billAccountReferences.requestRefreshAsync(args as bool) as Future<T?>,
      Map<String, BeneficiaryEntities>: () => _beneficiaries.requestRefreshAsync(args as bool) as Future<T?>,
      CashInCustomPhoneNumberWorkingBook: () => _cashInCustomPhoneNumbers.requestRefreshAsync(args as String? ?? '') as Future<T?>,
      PhoneNumberWorkingBookWithMarketIsoCode: () => _contacts.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'ContactsStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _activeP2PBeneficiary.close();
    _billAccountReferences.close();
    _beneficiaries.close();
    _cashInCustomPhoneNumbers.close();
    _contacts.close();
  }
}
