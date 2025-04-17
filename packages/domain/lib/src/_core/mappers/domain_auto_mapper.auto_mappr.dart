// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i32;

import '../../accounts/_mappers/accounts_auto_mapper.dart' as _i7;
import '../../airtime/_mappers/airtime_auto_mapper.dart' as _i20;
import '../../authentication/_mappers/authentication_auto_mapper.dart' as _i4;
import '../../beneficiaries/_mappers/beneficiaries_auto_mapper.dart' as _i17;
import '../../bills/_mappers/bills_auto_mapper.dart' as _i21;
import '../../budget/_mappers/budget_auto_mapper.dart' as _i27;
import '../../cards/_mappers/cards_auto_mapper.dart' as _i25;
import '../../common/_mappers/common_auto_mapper.dart' as _i1;
import '../../currency/_mappers/currency_auto_mapper.dart' as _i28;
import '../../deposit/_mappers/deposit_auto_mapper.dart' as _i11;
import '../../iban/_mappers/iban_auto_mapper.dart' as _i18;
import '../../invest/_mappers/invest_auto_mapper.dart' as _i22;
import '../../kyc/_mappers/kyc_auto_mapper.dart' as _i9;
import '../../loans/_mappers/loans_auto_mapper.dart' as _i29;
import '../../markets/_mappers/markets_auto_mapper.dart' as _i3;
import '../../me/_mappers/me_auto_mapper.dart' as _i19;
import '../../messaging_hub/_mappers/messaging_hub_auto_mapper.dart' as _i16;
import '../../mfi_migration/_mappers/mfi_migration_auto_mapper.dart' as _i30;
import '../../onboarding/_mappers/onboarding_auto_mapper.dart' as _i5;
import '../../orders/_mappers/orders_auto_mapper.dart' as _i8;
import '../../passcode/_mappers/passcode_auto_mapper.dart' as _i6;
import '../../payment_link/_mappers/payment_link_auto_mapper.dart' as _i31;
import '../../products/_mappers/products_auto_mapper.dart' as _i15;
import '../../referrals/_mappers/referrals_auto_mapper.dart' as _i23;
import '../../services/_mappers/services_auto_mapper.dart' as _i10;
import '../../settings/_mappers/settings_auto_mapper.dart' as _i2;
import '../../subscriptions/_mappers/subscriptions_auto_mapper.dart' as _i24;
import '../../support/_mappers/support_auto_mapper.dart' as _i26;
import '../../transactions/_mappers/transactions_auto_mapper.dart' as _i14;
import '../../transfer/_mappers/transfer_auto_mapper.dart' as _i12;
import '../../vaults/_mappers/vaults_auto_mapper.dart' as _i13;

/// {@template package:domain/src/_core/mappers/domain_auto_mapper.dart}
/// Available mappings:
/// {@endtemplate}
///
/// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
class $DomainAutoMapper implements _i32.AutoMapprInterface {
  const $DomainAutoMapper();

  Type _typeOf<T>() => T;

  List<_i32.AutoMapprInterface> get _delegates => const [
        const _i1.CommonAutoMapper(),
        const _i2.SettingsAutoMapper(),
        const _i3.MarketsAutoMapper(),
        const _i4.AuthenticationAutoMapper(),
        const _i5.OnboardingAutoMapper(),
        const _i6.PasscodeAutoMapper(),
        const _i7.AccountsAutoMapper(),
        const _i8.OrdersAutoMapper(),
        const _i9.KycAutoMapper(),
        const _i10.ServicesAutoMapper(),
        const _i11.DepositAutoMapper(),
        const _i12.TransferAutoMapper(),
        const _i13.VaultsAutoMapper(),
        const _i14.TransactionsAutoMapper(),
        const _i15.ProductsAutoMapper(),
        const _i16.MessagingHubAutoMapper(),
        const _i17.BeneficiariesAutoMapper(),
        const _i18.IbanAutoMapper(),
        const _i19.MeAutoMapper(),
        const _i20.AirtimeAutoMapper(),
        const _i21.BillsAutoMapper(),
        const _i22.InvestAutoMapper(),
        const _i23.ReferralsAutoMapper(),
        const _i24.SubscriptionsAutoMapper(),
        const _i25.CardsAutoMapper(),
        const _i26.SupportAutoMapper(),
        const _i27.BudgetAutoMapper(),
        const _i28.CurrencyAutoMapper(),
        const _i29.LoansAutoMapper(),
        const _i30.MfiMigrationAutoMapper(),
        const _i31.PaymentLinkAutoMapper(),
      ];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(
        model,
        onMappingError: onMappingError,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
          (item) => _safeConvert(item, onMappingError: onMappingError));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    try {
      return _convert(
        model,
        canReturnNull: true,
      );
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:domain/src/_core/mappers/domain_auto_mapper.dart}
  ///
  /// Used delegates: [_i1.CommonAutoMapper], [_i2.SettingsAutoMapper], [_i3.MarketsAutoMapper], [_i4.AuthenticationAutoMapper], [_i5.OnboardingAutoMapper], [_i6.PasscodeAutoMapper], [_i7.AccountsAutoMapper], [_i8.OrdersAutoMapper], [_i9.KycAutoMapper], [_i10.ServicesAutoMapper], [_i11.DepositAutoMapper], [_i12.TransferAutoMapper], [_i13.VaultsAutoMapper], [_i14.TransactionsAutoMapper], [_i15.ProductsAutoMapper], [_i16.MessagingHubAutoMapper], [_i17.BeneficiariesAutoMapper], [_i18.IbanAutoMapper], [_i19.MeAutoMapper], [_i20.AirtimeAutoMapper], [_i21.BillsAutoMapper], [_i22.InvestAutoMapper], [_i23.ReferralsAutoMapper], [_i24.SubscriptionsAutoMapper], [_i25.CardsAutoMapper], [_i26.SupportAutoMapper], [_i27.BudgetAutoMapper], [_i28.CurrencyAutoMapper], [_i29.LoansAutoMapper], [_i30.MfiMigrationAutoMapper], [_i31.PaymentLinkAutoMapper]
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }
}
