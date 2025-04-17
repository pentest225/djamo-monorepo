//@GeneratedMicroModule;DomainPackageModule;package:domain/src/_core/injection/domain_dependencies_injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/src/_core/mappers/domain_auto_mapper.dart' as _i676;
import 'package:domain/src/_store/domain_store.dart' as _i61;
import 'package:domain/src/accounts/_mappers/accounts_auto_mapper.dart'
    as _i940;
import 'package:domain/src/airtime/_mappers/airtime_auto_mapper.dart' as _i493;
import 'package:domain/src/authentication/_mappers/authentication_auto_mapper.dart'
    as _i459;
import 'package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.dart'
    as _i498;
import 'package:domain/src/bills/_mappers/bills_auto_mapper.dart' as _i619;
import 'package:domain/src/budget/_mappers/budget_auto_mapper.dart' as _i1052;
import 'package:domain/src/cards/_mappers/cards_auto_mapper.dart' as _i409;
import 'package:domain/src/common/_mappers/common_auto_mapper.dart' as _i430;
import 'package:domain/src/currency/_mappers/currency_auto_mapper.dart'
    as _i432;
import 'package:domain/src/deposit/_mappers/deposit_auto_mapper.dart' as _i839;
import 'package:domain/src/iban/_mappers/iban_auto_mapper.dart' as _i1027;
import 'package:domain/src/invest/_mappers/invest_auto_mapper.dart' as _i146;
import 'package:domain/src/kyc/_mappers/kyc_auto_mapper.dart' as _i360;
import 'package:domain/src/loans/_mappers/loans_auto_mapper.dart' as _i711;
import 'package:domain/src/markets/_mappers/markets_auto_mapper.dart' as _i476;
import 'package:domain/src/me/_mappers/me_auto_mapper.dart' as _i241;
import 'package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart'
    as _i189;
import 'package:domain/src/messaging_hub/services/messaging_hub.dart' as _i20;
import 'package:domain/src/mfi_migration/_mappers/mfi_migration_auto_mapper.dart'
    as _i235;
import 'package:domain/src/onboarding/_mappers/onboarding_auto_mapper.dart'
    as _i587;
import 'package:domain/src/orders/_mappers/orders_auto_mapper.dart' as _i169;
import 'package:domain/src/passcode/_mappers/passcode_auto_mapper.dart'
    as _i794;
import 'package:domain/src/payment_link/_mappers/payment_link_auto_mapper.dart'
    as _i856;
import 'package:domain/src/products/_mappers/products_auto_mapper.dart'
    as _i242;
import 'package:domain/src/referrals/_mappers/referrals_auto_mapper.dart'
    as _i504;
import 'package:domain/src/services/_mappers/services_auto_mapper.dart'
    as _i657;
import 'package:domain/src/settings/_mappers/settings_auto_mapper.dart'
    as _i294;
import 'package:domain/src/subscriptions/_mappers/subscriptions_auto_mapper.dart'
    as _i1;
import 'package:domain/src/support/_mappers/support_auto_mapper.dart' as _i434;
import 'package:domain/src/transactions/_mappers/transactions_auto_mapper.dart'
    as _i636;
import 'package:domain/src/transfer/_mappers/transfer_auto_mapper.dart'
    as _i279;
import 'package:domain/src/vaults/_mappers/vaults_auto_mapper.dart' as _i633;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i711.LoansAutoMapper>(() => const _i711.LoansAutoMapper());
    gh.factory<_i294.SettingsAutoMapper>(
        () => const _i294.SettingsAutoMapper());
    gh.factory<_i839.DepositAutoMapper>(() => const _i839.DepositAutoMapper());
    gh.factory<_i242.ProductsAutoMapper>(
        () => const _i242.ProductsAutoMapper());
    gh.factory<_i360.KycAutoMapper>(() => const _i360.KycAutoMapper());
    gh.factory<_i189.MessagingHubAutoMapper>(
        () => const _i189.MessagingHubAutoMapper());
    gh.factory<_i504.ReferralsAutoMapper>(
        () => const _i504.ReferralsAutoMapper());
    gh.factory<_i409.CardsAutoMapper>(() => const _i409.CardsAutoMapper());
    gh.factory<_i498.BeneficiariesAutoMapper>(
        () => const _i498.BeneficiariesAutoMapper());
    gh.factory<_i279.TransferAutoMapper>(
        () => const _i279.TransferAutoMapper());
    gh.factory<_i235.MfiMigrationAutoMapper>(
        () => const _i235.MfiMigrationAutoMapper());
    gh.factory<_i1027.IbanAutoMapper>(() => const _i1027.IbanAutoMapper());
    gh.factory<_i1.SubscriptionsAutoMapper>(
        () => const _i1.SubscriptionsAutoMapper());
    gh.factory<_i636.TransactionsAutoMapper>(
        () => const _i636.TransactionsAutoMapper());
    gh.factory<_i430.CommonAutoMapper>(() => const _i430.CommonAutoMapper());
    gh.factory<_i619.BillsAutoMapper>(() => const _i619.BillsAutoMapper());
    gh.factory<_i633.VaultsAutoMapper>(() => const _i633.VaultsAutoMapper());
    gh.factory<_i940.AccountsAutoMapper>(
        () => const _i940.AccountsAutoMapper());
    gh.factory<_i434.SupportAutoMapper>(() => const _i434.SupportAutoMapper());
    gh.factory<_i476.MarketsAutoMapper>(() => const _i476.MarketsAutoMapper());
    gh.factory<_i241.MeAutoMapper>(() => const _i241.MeAutoMapper());
    gh.factory<_i856.PaymentLinkAutoMapper>(
        () => const _i856.PaymentLinkAutoMapper());
    gh.factory<_i794.PasscodeAutoMapper>(
        () => const _i794.PasscodeAutoMapper());
    gh.factory<_i169.OrdersAutoMapper>(() => const _i169.OrdersAutoMapper());
    gh.factory<_i459.AuthenticationAutoMapper>(
        () => const _i459.AuthenticationAutoMapper());
    gh.factory<_i432.CurrencyAutoMapper>(
        () => const _i432.CurrencyAutoMapper());
    gh.factory<_i657.ServicesAutoMapper>(
        () => const _i657.ServicesAutoMapper());
    gh.factory<_i587.OnboardingAutoMapper>(
        () => const _i587.OnboardingAutoMapper());
    gh.factory<_i493.AirtimeAutoMapper>(() => const _i493.AirtimeAutoMapper());
    gh.factory<_i146.InvestAutoMapper>(() => const _i146.InvestAutoMapper());
    gh.factory<_i1052.BudgetAutoMapper>(() => const _i1052.BudgetAutoMapper());
    gh.singleton<_i20.MessagingHub>(
      () => _i20.MessagingHub()..init(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i676.DomainAutoMapper>(() => _i676.DomainAutoMapper());
    gh.lazySingleton<_i61.DomainStore>(
      () => _i61.IDomainStore(),
      dispose: (i) => i.dispose(),
    );
  }
}
