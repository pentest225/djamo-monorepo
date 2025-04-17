import 'package:domain/src/accounts/accounts.dart';
import 'package:domain/src/airtime/airtime.dart';
import 'package:domain/src/authentication/authentication.dart';
import 'package:domain/src/beneficiaries/beneficiaries.dart';
import 'package:domain/src/bills/bills.dart';
import 'package:domain/src/budget/budget.dart';
import 'package:domain/src/cards/cards.dart';
import 'package:domain/src/currency/currency.dart';
import 'package:domain/src/deposit/deposit.dart';
import 'package:domain/src/iban/iban.dart';
import 'package:domain/src/invest/invest.dart';
import 'package:domain/src/kyc/kyc.dart';
import 'package:domain/src/loans/loans.dart';
import 'package:domain/src/markets/markets.dart';
import 'package:domain/src/me/me.dart';
import 'package:domain/src/messaging_hub/messaging_hub.dart';
import 'package:domain/src/mfi_migration/mfi_migration.dart';
import 'package:domain/src/onboarding/onboarding.dart';
import 'package:domain/src/orders/orders.dart';
import 'package:domain/src/passcode/passcode.dart';
import 'package:domain/src/payment_link/payment_link.dart';
import 'package:domain/src/products/products.dart';
import 'package:domain/src/referrals/referrals.dart';
import 'package:domain/src/services/services.dart';
import 'package:domain/src/settings/settings.dart';
import 'package:domain/src/subscriptions/subscriptions.dart';
import 'package:domain/src/support/support.dart';
import 'package:domain/src/transactions/transactions.dart';
import 'package:domain/src/transfer/transfer.dart';
import 'package:domain/src/vaults/vaults.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

abstract class DomainStore {
  LoansStoreWrapper get loans;
  CurrencyStoreWrapper get currency;
  BudgetStoreWrapper get budget;
  SupportStoreWrapper get support;
  SubscriptionsStoreWrapper get subscriptions;
  CardsStoreWrapper get cards;
  ReferralsStoreWrapper get referrals;
  InvestStoreWrapper get invest;
  BillsStoreWrapper get bills;
  AirtimeStoreWrapper get airtime;
  MessagingHubStoreWrapper get messagingHub;
  MeStoreWrapper get me;
  IbanStoreWrapper get iban;
  TransferStoreWrapper get transfer;
  DepositStoreWrapper get deposit;
  ServicesStoreWrapper get services;
  TransactionsStoreWrapper get transactions;
  AccountsStoreWrapper get accounts;
  VaultsStoreWrapper get vaults;
  ProductsStoreWrapper get products;
  OrdersStoreWrapper get orders;
  SettingsStoreWrapper get settings;
  PasscodeStoreWrapper get passcode;
  KycStoreWrapper get kyc;
  MarketsStoreWrapper get markets;
  OnboardingStoreWrapper get onboarding;
  AuthenticationStoreWrapper get authentication;
  BeneficiariesStoreWrapper get beneficiaries;
  PaymentLinkStoreWrapper get paymentLink;
  MfiMigrationStoreWrapper get mfiMigration;

  Stream<DateTime> get reEvaluator;
  void reEvaluate();
  void dispose();
}

@LazySingleton(as: DomainStore)
final class IDomainStore implements DomainStore {
  IDomainStore()
      : //##Assigns
        mfiMigration = MfiMigrationStoreWrapper(identifier: 'mfi_migration'),
        paymentLink = PaymentLinkStoreWrapper(identifier: 'payment_link'),
        loans = LoansStoreWrapper(identifier: 'loans'),
        currency = CurrencyStoreWrapper(identifier: 'currency'),
        budget = BudgetStoreWrapper(identifier: 'budget'),
        support = SupportStoreWrapper(identifier: 'support'),
        subscriptions = SubscriptionsStoreWrapper(identifier: 'subscriptions'),
        cards = CardsStoreWrapper(identifier: 'cards'),
        referrals = ReferralsStoreWrapper(identifier: 'referrals'),
        invest = InvestStoreWrapper(identifier: 'invest'),
        bills = BillsStoreWrapper(identifier: 'bills'),
        airtime = AirtimeStoreWrapper(identifier: 'airtime'),
        messagingHub = MessagingHubStoreWrapper(identifier: 'messaging_hub'),
        me = MeStoreWrapper(identifier: 'me'),
        iban = IbanStoreWrapper(identifier: 'iban'),
        transfer = TransferStoreWrapper(identifier: 'transfer'),
        deposit = DepositStoreWrapper(identifier: 'deposit'),
        services = ServicesStoreWrapper(identifier: 'services'),
        transactions = TransactionsStoreWrapper(identifier: 'transactions'),
        accounts = AccountsStoreWrapper(identifier: 'accounts'),
        vaults = VaultsStoreWrapper(identifier: 'vaults'),
        products = ProductsStoreWrapper(identifier: 'products'),
        orders = OrdersStoreWrapper(identifier: 'orders'),
        settings = SettingsStoreWrapper(identifier: 'settings'),
        passcode = PasscodeStoreWrapper(identifier: 'passcode'),
        kyc = KycStoreWrapper(identifier: 'kyc'),
        onboarding = OnboardingStoreWrapper(identifier: 'onboarding'),
        markets = MarketsStoreWrapper(identifier: 'markets'),
        beneficiaries = BeneficiariesStoreWrapper(identifier: 'contacts'),
        authentication = AuthenticationStoreWrapper(identifier: 'authentication'),
        _reEvaluator = PublishSubject();
  //##Declaration

  //mfi_migration
  @override
  MfiMigrationStoreWrapper mfiMigration;

  //payment_link
  @override
  PaymentLinkStoreWrapper paymentLink;

  ///loans
  @override
  LoansStoreWrapper loans;

  ///currency
  @override
  CurrencyStoreWrapper currency;

  ///budget
  @override
  BudgetStoreWrapper budget;

  ///support
  @override
  SupportStoreWrapper support;

  ///subscriptions
  @override
  SubscriptionsStoreWrapper subscriptions;

  ///cards
  @override
  CardsStoreWrapper cards;

  ///referrals
  @override
  ReferralsStoreWrapper referrals;

  ///invest
  @override
  InvestStoreWrapper invest;

  ///bills
  @override
  BillsStoreWrapper bills;

  ///airtime
  @override
  AirtimeStoreWrapper airtime;

  ///messaging_hub
  @override
  MessagingHubStoreWrapper messagingHub;

  ///me
  @override
  MeStoreWrapper me;

  ///iban
  @override
  IbanStoreWrapper iban;

  ///transfer
  @override
  TransferStoreWrapper transfer;

  ///deposit
  @override
  DepositStoreWrapper deposit;

  ///services
  @override
  ServicesStoreWrapper services;

  ///transactions
  @override
  TransactionsStoreWrapper transactions;

  ///accounts
  @override
  AccountsStoreWrapper accounts;

  ///vaults
  @override
  VaultsStoreWrapper vaults;

  ///products
  @override
  ProductsStoreWrapper products;

  ///orders
  @override
  OrdersStoreWrapper orders;

  ///settings
  @override
  SettingsStoreWrapper settings;

  ///passcode
  @override
  PasscodeStoreWrapper passcode;

  ///kyc
  @override
  KycStoreWrapper kyc;

  ///onboarding
  @override
  OnboardingStoreWrapper onboarding;

  ///markets
  @override
  MarketsStoreWrapper markets;

  ///contacts
  @override
  BeneficiariesStoreWrapper beneficiaries;

  ///authentication
  @override
  AuthenticationStoreWrapper authentication;

  ////Re-evaluator
  final PublishSubject<DateTime> _reEvaluator;

  ////Re-evaluator stream
  @override
  Stream<DateTime> get reEvaluator => _reEvaluator.stream;

  @override
  void reEvaluate() {
    _reEvaluator.add(DateTime.now());
  }

  /// Closes all stores.
  @override
  @disposeMethod
  void dispose() {
    //##Dispose
    mfiMigration.dispose();
    paymentLink.dispose();
    loans.dispose();
    currency.dispose();
    budget.dispose();
    support.dispose();
    subscriptions.dispose();
    cards.dispose();
    referrals.dispose();
    invest.dispose();
    bills.dispose();
    airtime.dispose();
    messagingHub.dispose();
    me.dispose();
    transfer.dispose();
    deposit.dispose();
    services.dispose();
    transactions.dispose();
    accounts.dispose();
    vaults.dispose();
    products.dispose();
    orders.dispose();
    settings.dispose();
    passcode.dispose();
    kyc.dispose();
    onboarding.dispose();
    settings.dispose();
    services.dispose();
    transactions.dispose();
    products.dispose();
    beneficiaries.dispose();
    authentication.dispose();
    iban.dispose();
    //
    _reEvaluator.close();
  }
}
