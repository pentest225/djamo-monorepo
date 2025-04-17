import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/_core/mappers/domain_auto_mapper.auto_mappr.dart';
import 'package:domain/src/accounts/_mappers/accounts_auto_mapper.dart';
import 'package:domain/src/airtime/_mappers/airtime_auto_mapper.dart';
import 'package:domain/src/authentication/_mappers/authentication_auto_mapper.dart';
import 'package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart';
import 'package:domain/src/bills/_mappers/bills_auto_mapper.dart';
import 'package:domain/src/budget/_mappers/budget_auto_mapper.dart';
import 'package:domain/src/cards/_mappers/cards_auto_mapper.dart';
import 'package:domain/src/common/_mappers/common_auto_mapper.dart';
import 'package:domain/src/currency/_mappers/currency_auto_mapper.dart';
import 'package:domain/src/deposit/_mappers/deposit_auto_mapper.dart';
import 'package:domain/src/iban/_mappers/iban_auto_mapper.dart';
import 'package:domain/src/invest/_mappers/invest_auto_mapper.dart';
import 'package:domain/src/kyc/_mappers/kyc_auto_mapper.dart';
import 'package:domain/src/loans/_mappers/loans_auto_mapper.dart';
import 'package:domain/src/markets/_mappers/markets_auto_mapper.dart';
import 'package:domain/src/me/_mappers/me_auto_mapper.dart';
import 'package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart';
import 'package:domain/src/mfi_migration/_mappers/mfi_migration_auto_mapper.dart';
import 'package:domain/src/onboarding/_mappers/onboarding_auto_mapper.dart';
import 'package:domain/src/orders/_mappers/orders_auto_mapper.dart';
import 'package:domain/src/passcode/_mappers/passcode_auto_mapper.dart';
import 'package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart';
import 'package:domain/src/products/_mappers/products_auto_mapper.dart';
import 'package:domain/src/referrals/_mappers/referrals_auto_mapper.dart';
import 'package:domain/src/services/_mappers/services_auto_mapper.dart';
import 'package:domain/src/settings/_mappers/settings_auto_mapper.dart';
import 'package:domain/src/subscriptions/_mappers/subscriptions_auto_mapper.dart';
import 'package:domain/src/support/_mappers/support_auto_mapper.dart';
import 'package:domain/src/transactions/_mappers/transactions_auto_mapper.dart';
import 'package:domain/src/transfer/_mappers/transfer_auto_mapper.dart';
import 'package:domain/src/vaults/_mappers/vaults_auto_mapper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@AutoMappr(
  [],
  delegates: [
    CommonAutoMapper(),
    SettingsAutoMapper(),
    MarketsAutoMapper(),
    AuthenticationAutoMapper(),
    OnboardingAutoMapper(),
    PasscodeAutoMapper(),
    AccountsAutoMapper(),
    OrdersAutoMapper(),
    KycAutoMapper(),
    ServicesAutoMapper(),
    DepositAutoMapper(),
    TransferAutoMapper(),
    VaultsAutoMapper(),
    TransactionsAutoMapper(),
    ProductsAutoMapper(),
    MessagingHubAutoMapper(),
    BeneficiariesAutoMapper(),
    IbanAutoMapper(),
    MeAutoMapper(),
    AirtimeAutoMapper(),
    BillsAutoMapper(),
    InvestAutoMapper(),
    ReferralsAutoMapper(),
    SubscriptionsAutoMapper(),
    CardsAutoMapper(),
    SupportAutoMapper(),
    BudgetAutoMapper(),
    CurrencyAutoMapper(),
    LoansAutoMapper(),
    MfiMigrationAutoMapper(),
    PaymentLinkAutoMapper(),
  ],
)

///
class DomainAutoMapper extends $DomainAutoMapper {}
