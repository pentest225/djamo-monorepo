import 'package:domain/src/services/entities/entities.dart';
import 'package:domain/src/services/enums/bank_service_type_enum.dart';
import 'package:domain/src/services/objects/bank_services_object.dart';
import 'package:domain/src/services/services_store_wrapper.dart';

extension ServicesStoreWrapperX on ServicesStoreWrapper {
  void requestRefreshForServices() {
    requestRefresh<GroupedServiceEntities, bool>(true);
  }

  void requestRefreshForDepositBanks() {
    requestRefresh<BankServicesObject, BankServiceTypeEnum>(BankServiceTypeEnum.deposit);
  }

  void requestRefreshForTransferBanks() {
    requestRefresh<BankServicesObject, BankServiceTypeEnum>(BankServiceTypeEnum.transfer);
  }

  void requestRefreshForBillers() {
    requestRefresh<BillerServiceEntities, bool>(true);
  }
}
