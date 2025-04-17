import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/vaults/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class VaultsStoreWrapper extends StoreWrapper {
  VaultsStoreWrapper({super.identifier = 'Vaults'}) {
    //##Initializations
    _vaults = StoreUnit<VaultEntities, bool>.init(identifier: '_vaults', initialValue: const []);
    _savingProducts = StoreUnit<VaultSavingProductEntities, bool>.init(identifier: '_savingProducts', initialValue: const []);
    _selectedVault = StoreUnit<VaultEntity, bool>.init(identifier: '_selectedVault', initialValue: VaultEntity.empty);
    _challenges = StoreUnit<ClientChallengesEntity, bool>.init(identifier: '_challenges', initialValue: ClientChallengesEntity.empty);
    _selectedChallenge = StoreUnit<ChallengeEntity, bool>.init(identifier: '_selectedChallenge', initialValue: ChallengeEntity.empty);
  }

  //##Declarations
  late final StoreUnit<VaultEntities, bool> _vaults;
  late final StoreUnit<VaultSavingProductEntities, bool> _savingProducts;
  late final StoreUnit<VaultEntity, bool> _selectedVault;
  late final StoreUnit<ClientChallengesEntity, bool> _challenges;
  late final StoreUnit<ChallengeEntity, bool> _selectedChallenge;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      VaultEntities: _vaults.value,
      VaultSavingProductEntities: _savingProducts.value,
      VaultEntity: _selectedVault.value,
      ClientChallengesEntity: _challenges.value,
      ChallengeEntity: _selectedChallenge.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      VaultEntities: _vaults.stream,
      VaultSavingProductEntities: _savingProducts.stream,
      VaultEntity: _selectedVault.stream,
      ClientChallengesEntity: _challenges.stream,
      ChallengeEntity: _selectedChallenge.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      VaultEntities: _vaults.request,
      VaultSavingProductEntities: _savingProducts.request,
      VaultEntity: _selectedVault.request,
      ClientChallengesEntity: _challenges.request,
      ChallengeEntity: _selectedChallenge.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      VaultEntities: _vaults.status,
      VaultSavingProductEntities: _savingProducts.status,
      VaultEntity: _selectedVault.status,
      ClientChallengesEntity: _challenges.status,
      ChallengeEntity: _selectedChallenge.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      VaultEntities: (a) => _vaults.sink(a as VaultEntities),
      VaultSavingProductEntities: (a) => _savingProducts.sink(a as VaultSavingProductEntities),
      VaultEntity: (a) => _selectedVault.sink(a as VaultEntity),
      ClientChallengesEntity: (a) => _challenges.sink(a as ClientChallengesEntity),
      ChallengeEntity: (a) => _selectedChallenge.sink(a as ChallengeEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      VaultEntities: () => _vaults.requestRefresh(args as bool),
      VaultSavingProductEntities: () => _savingProducts.requestRefresh(args as bool),
      VaultEntity: () => _selectedVault.requestRefresh(args as bool),
      ClientChallengesEntity: () => _challenges.requestRefresh(args as bool),
      ChallengeEntity: () => _selectedChallenge.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      VaultEntities: () => _vaults.toErr(),
      VaultSavingProductEntities: () => _savingProducts.toErr(),
      VaultEntity: () => _selectedVault.toErr(),
      ClientChallengesEntity: () => _challenges.toErr(),
      ChallengeEntity: () => _selectedChallenge.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      VaultEntities: () => _vaults.toLoading(),
      VaultSavingProductEntities: () => _savingProducts.toLoading(),
      VaultEntity: () => _selectedVault.toLoading(),
      ClientChallengesEntity: () => _challenges.toLoading(),
      ChallengeEntity: () => _selectedChallenge.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      VaultEntities: () => _vaults.toSuccess(value as VaultEntities?),
      VaultSavingProductEntities: () => _savingProducts.toSuccess(value as VaultSavingProductEntities?),
      VaultEntity: () => _selectedVault.toSuccess(value as VaultEntity?),
      ClientChallengesEntity: () => _challenges.toSuccess(value as ClientChallengesEntity?),
      ChallengeEntity: () => _selectedChallenge.toSuccess(value as ChallengeEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      VaultEntities: () => _vaults.requestRefreshAsync(args as bool) as Future<T?>,
      VaultSavingProductEntities: () => _savingProducts.requestRefreshAsync(args as bool) as Future<T?>,
      VaultEntity: () => _selectedVault.requestRefreshAsync(args as bool) as Future<T?>,
      ClientChallengesEntity: () => _challenges.requestRefreshAsync(args as bool) as Future<T?>,
      ChallengeEntity: () => _selectedChallenge.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('VaultsDataWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _vaults.close();
    _savingProducts.close();
    _selectedVault.close();
    _challenges.close();
    _selectedChallenge.close();
  }
}
