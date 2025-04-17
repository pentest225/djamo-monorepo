import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/accounts/_mappers/accounts_auto_mapper.auto_mappr.dart';
import 'package:domain/src/accounts/entities/entities.dart';
import 'package:domain/src/accounts/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<AccountModel, AccountEntity>(reverse: true),
  MapType<MonthlyCreditLimitModel, MonthlyCreditLimitEntity>(reverse: true),
  MapType<AccountSubscriptionModel, AccountSubscriptionEntity>(reverse: true),
  MapType<SubscriptionCounterModel, SubscriptionCounterEntity>(reverse: true),
  MapType<SubscriptionConfigModel, SubscriptionConfigEntity>(reverse: true),
  MapType<SubscriptionDebtModel, SubscriptionDebtEntity>(reverse: true),
])
class AccountsAutoMapper extends $AccountsAutoMapper {
  const AccountsAutoMapper();
}
