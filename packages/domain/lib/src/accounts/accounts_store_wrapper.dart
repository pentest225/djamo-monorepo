import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/accounts/entities/entities.dart';
import 'package:domain/src/accounts/objects/main_account_state_object.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class AccountsStoreWrapper extends StoreWrapper {
  AccountsStoreWrapper({super.identifier = 'Accounts'}) {
    //##Initializations
    _accounts = StoreUnit<AccountEntities, bool>.init(identifier: '_accounts', initialValue: const []);
    _subscription = StoreUnit<AccountSubscriptionEntity, bool>.init(identifier: '_subscription', initialValue: AccountSubscriptionEntity.empty);
    _mainAccount = StoreUnit<AccountEntity, bool>.init(identifier: '_mainAccount', initialValue: AccountEntity.empty);
    _mainAccountState = StoreUnit<MainAccountStateObject, bool>.init(identifier: '_mainAccountState', initialValue: MainAccountStateObject.empty);
  }

  //##Declarations
  late final StoreUnit<AccountEntities, bool> _accounts;
  late final StoreUnit<AccountSubscriptionEntity, bool> _subscription;
  late final StoreUnit<AccountEntity, bool> _mainAccount;
  late final StoreUnit<MainAccountStateObject, bool> _mainAccountState;

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      AccountEntities: _accounts.stream,
      AccountSubscriptionEntity: _subscription.stream,
      AccountEntity: _mainAccount.stream,
      MainAccountStateObject: _mainAccountState.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      AccountEntities: _accounts.value,
      AccountSubscriptionEntity: _subscription.value,
      AccountEntity: _mainAccount.value,
      MainAccountStateObject: _mainAccountState.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      AccountEntities: _accounts.request,
      AccountSubscriptionEntity: _subscription.request,
      AccountEntity: _mainAccount.request,
      MainAccountStateObject: _mainAccountState.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      AccountEntities: _accounts.status,
      AccountSubscriptionEntity: _subscription.status,
      AccountEntity: _mainAccount.status,
      MainAccountStateObject: _mainAccountState.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      AccountEntities: (a) => _accounts.sink(a as AccountEntities),
      AccountSubscriptionEntity: (a) => _subscription.sink(a as AccountSubscriptionEntity),
      AccountEntity: (a) => _mainAccount.sink(a as AccountEntity),
      MainAccountStateObject: (a) => _mainAccountState.sink(a as MainAccountStateObject),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      AccountEntities: () => _accounts.requestRefresh(args as bool),
      AccountSubscriptionEntity: () => _subscription.requestRefresh(args as bool),
      AccountEntity: () => _mainAccount.requestRefresh(args as bool),
      MainAccountStateObject: () => _mainAccountState.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      AccountEntities: () => _accounts.toErr(),
      AccountSubscriptionEntity: () => _subscription.toErr(),
      AccountEntity: () => _mainAccount.toErr(),
      MainAccountStateObject: () => _mainAccountState.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      AccountEntities: () => _accounts.toLoading(),
      AccountSubscriptionEntity: () => _subscription.toLoading(),
      AccountEntity: () => _mainAccount.toLoading(),
      MainAccountStateObject: () => _mainAccountState.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final _ = <Type, VoidCallback>{
      //##ToSuccess
      AccountEntities: () => _accounts.toSuccess(value as AccountEntities?),
      AccountSubscriptionEntity: () => _subscription.toSuccess(value as AccountSubscriptionEntity?),
      AccountEntity: () => _mainAccount.toSuccess(value as AccountEntity?),
      MainAccountStateObject: () => _mainAccountState.toSuccess(value as MainAccountStateObject?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'toSuccess'),
    );
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      AccountEntities: () => _accounts.requestRefreshAsync(args as bool) as Future<T?>,
      AccountSubscriptionEntity: () => _subscription.requestRefreshAsync(args as bool) as Future<T?>,
      AccountEntity: () => _mainAccount.requestRefreshAsync(args as bool) as Future<T?>,
      MainAccountStateObject: () => _mainAccountState.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('AccountsStoreWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _accounts.close();
    _subscription.close();
    _mainAccount.close();
    _mainAccountState.close();
  }
}
