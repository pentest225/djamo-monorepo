import 'dart:async';

import 'package:core/src/enums/app_hydrated_storage_key_enum.dart';
import 'package:core/src/storages/app_storage_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

/// A service that provides the hydrated storage keys for the app.
AppHydrationKeysService get hydration => sl<AppHydrationKeysService>();

@singleton
class AppHydrationKeysService {
  AppHydrationKeysService({
    required AppStorageService storage,
  }) : _storage = storage;

  final AppStorageService _storage;

  String get getActiveUserId => _storage.getActiveUserId;
  String get getActiveCountrySuffix => _storage.getActiveCountrySuffix;

  StreamSubscription<AuthenticationStatusEnum>? _authenticationStatusSubscription;
  StreamSubscription<CountryEntity>? _countrySubscription;

  String _getKey(AppHydratedStorageKeyEnum key) {
    return key.key;
  }

  String get markets {
    return _getKey(AppHydratedStorageKeyEnum.markets);
  }

  String get marketsGeoLocation {
    return _getKey(AppHydratedStorageKeyEnum.marketsGeoLocation);
  }

  String get featureFlag {
    return _getKey(AppHydratedStorageKeyEnum.featureFlag);
  }

  String get authentication {
    return _getKey(AppHydratedStorageKeyEnum.authentication);
  }

  String get accounts {
    return _getKey(AppHydratedStorageKeyEnum.accounts);
  }

  String get dynamicForm {
    return _getKey(AppHydratedStorageKeyEnum.dynamicForm);
  }

  String get iban {
    return _getKey(AppHydratedStorageKeyEnum.iban);
  }

  String get invest {
    return _getKey(AppHydratedStorageKeyEnum.invest);
  }

  String get investProducts {
    return _getKey(AppHydratedStorageKeyEnum.investProducts);
  }

  String get investTransactions {
    return _getKey(AppHydratedStorageKeyEnum.investTransactions);
  }

  String get investForm {
    return _getKey(AppHydratedStorageKeyEnum.investForm);
  }

  String get loan {
    return _getKey(AppHydratedStorageKeyEnum.loan);
  }

  String get yearRecap {
    return _getKey(AppHydratedStorageKeyEnum.yearRecap);
  }

  String get orders {
    return _getKey(AppHydratedStorageKeyEnum.orders);
  }

  String get pass {
    return _getKey(AppHydratedStorageKeyEnum.pass);
  }

  String get paymentSubscription {
    return _getKey(AppHydratedStorageKeyEnum.paymentSubscription);
  }

  String get appTooltip {
    return _getKey(AppHydratedStorageKeyEnum.appTooltip);
  }

  String get transactions {
    return _getKey(AppHydratedStorageKeyEnum.transactions);
  }

  String get accountTransactions {
    return _getKey(AppHydratedStorageKeyEnum.accountTransactions);
  }

  String get transactionDetails {
    return _getKey(AppHydratedStorageKeyEnum.transactionDetails);
  }

  String get budget {
    return _getKey(AppHydratedStorageKeyEnum.budget);
  }

  String get transactionCategory {
    return _getKey(AppHydratedStorageKeyEnum.transactionCategory);
  }

  String get p2pTransactionChat {
    return _getKey(AppHydratedStorageKeyEnum.p2pTransactionChat);
  }

  String get transferService {
    return _getKey(AppHydratedStorageKeyEnum.transferService);
  }

  String get vaults {
    return _getKey(AppHydratedStorageKeyEnum.vaults);
  }

  String get airtime {
    return _getKey(AppHydratedStorageKeyEnum.airtime);
  }

  String get bills {
    return _getKey(AppHydratedStorageKeyEnum.bills);
  }

  String get billsPrepaidForm {
    return _getKey(AppHydratedStorageKeyEnum.billsPrepaidForm);
  }

  String get billsPostpaidForm {
    return _getKey(AppHydratedStorageKeyEnum.billsPostpaidForm);
  }

  String get billsSubscriptionRenewalForm {
    return _getKey(AppHydratedStorageKeyEnum.billsSubscriptionRenewalForm);
  }

  String get bonus {
    return _getKey(AppHydratedStorageKeyEnum.bonus);
  }

  String get settings {
    return _getKey(AppHydratedStorageKeyEnum.settings);
  }

  String get beneficiaries {
    return _getKey(AppHydratedStorageKeyEnum.beneficiaries);
  }

  //me
  String get me {
    return _getKey(AppHydratedStorageKeyEnum.me);
  }

  //meGIFS
  String get meGIFS {
    return _getKey(AppHydratedStorageKeyEnum.meGIFS);
  }

  //products
  String get products {
    return _getKey(AppHydratedStorageKeyEnum.products);
  }

  //messagingHub
  String get messagingHub {
    return _getKey(AppHydratedStorageKeyEnum.messagingHub);
  }

  //referrals
  String get referrals {
    return _getKey(AppHydratedStorageKeyEnum.referrals);
  }

  //services
  String get services {
    return _getKey(AppHydratedStorageKeyEnum.services);
  }

  //connectedClients
  String get connectedClients {
    return _getKey(AppHydratedStorageKeyEnum.connectedClients);
  }

  String get kyc {
    return _getKey(AppHydratedStorageKeyEnum.kyc);
  }

  //support
  String get support {
    return _getKey(AppHydratedStorageKeyEnum.support);
  }

  //statistics
  String get statistics {
    return _getKey(AppHydratedStorageKeyEnum.statistics);
  }

  //profileTooltips
  String get profileTooltips {
    return _getKey(AppHydratedStorageKeyEnum.profileTooltips);
  }

  //activeVault
  String get vaultDetails {
    return _getKey(AppHydratedStorageKeyEnum.activeVault);
  }

  String get balanceVisibilityDetails {
    return _getKey(AppHydratedStorageKeyEnum.balanceVisibilityDetails);
  }

  @disposeMethod
  void dispose() {
    _authenticationStatusSubscription?.cancel();
    _countrySubscription?.cancel();
  }
}
