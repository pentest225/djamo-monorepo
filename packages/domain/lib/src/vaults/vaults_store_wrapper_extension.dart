import 'package:domain/src/vaults/entities/entities.dart';
import 'package:domain/src/vaults/vaults_store_wrapper.dart';

extension VaultsStoreWrapperX on VaultsStoreWrapper {
  //VaultEntities
  void requestRefreshForVaults() {
    requestRefresh<VaultEntities, bool>(true);
  }

  //ClientChallengesEntity
  void requestRefreshForChallenges() {
    requestRefresh<ClientChallengesEntity, bool>(true);
  }

  //VaultSavingProductEntities
  void requestRefreshForSavingProducts() {
    requestRefresh<VaultSavingProductEntities, bool>(true);
  }
}
