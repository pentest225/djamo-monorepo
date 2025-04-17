import 'package:domain/src/accounts/accounts_store_wrapper.dart';
import 'package:domain/src/accounts/entities/entities.dart';

extension AccountsStoreWrapperX on AccountsStoreWrapper {
  AccountEntities get accounts {
    return value();
  }

  AccountSubscriptionEntity get subscription {
    return value();
  }
}
