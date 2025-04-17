import 'package:domain/src/beneficiaries/beneficiaries_store_wrapper.dart';
import 'package:domain/src/beneficiaries/entities/client_bill_account_reference_entity.dart';
import 'package:domain/src/beneficiaries/objects/phone_number_object.dart';

extension BeneficiariesStoreWrapperX on BeneficiariesStoreWrapper {
  //ClientBillAccountReferenceWorkingBook
  void requestReferenceClientBillAccountReferenceWorkingBook() {
    requestRefresh<ClientBillAccountReferenceWorkingBook, bool>(true);
  }

  //PhoneNumberWorkingBookWithMarketIsoCode
  void requestReferencePhoneNumbers({bool requestPermissionIfNeeded = false}) {
    requestRefresh<PhoneNumberWorkingBookWithMarketIsoCode, bool>(requestPermissionIfNeeded);
  }
}
