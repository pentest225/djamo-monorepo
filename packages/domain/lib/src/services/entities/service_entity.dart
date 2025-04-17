import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/enums/enums.dart';
import 'package:domain/src/deposit/enums/enums.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:meta/meta.dart';

typedef ServiceEntities = List<ServiceEntity>;

typedef GroupedServiceEntities = Map<ServiceCategoryTypeEnum, ServiceEntities>;

class ServiceEntity extends BaseEntity {
  const ServiceEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.label = emptyString,
    this.identifier = emptyString,
    this.iconUrl = emptyString,
    this.isActive = false,
    this.isAvailableWithPhysicalCard = false,
    this.accountTypes = const [],
    this.category = emptyString,
    this.order = 0,
    this.configuration = const {},
  });

  final String id;
  final String name;
  final String label;
  final String identifier;
  final String iconUrl;
  final bool isActive;
  final bool isAvailableWithPhysicalCard;
  @internal
  final List<String> accountTypes;
  @internal
  final String category;
  final int order;
  final Map<String, dynamic> configuration;

  static const empty = ServiceEntity();

  bool get isEmpty => this == empty;

  @override
  String toString() {
    return 'ServiceEntity{id: $id, name: $name, label: $label, identifier: $identifier, isActive: $isActive, category: $category}';
  }

  @override
  List<Object?> get props => [
        id,
        name,
        label,
        identifier,
        iconUrl,
        isActive,
        isAvailableWithPhysicalCard,
        accountTypes,
        category,
        order,
        configuration,
      ];

  ServiceEntity copyWith({
    String? id,
    String? name,
    String? label,
    String? identifier,
    String? iconUrl,
    bool? isActive,
    bool? isAvailableWithPhysicalCard,
    List<String>? accountTypes,
    String? category,
    int? order,
    Map<String, dynamic>? configuration,
  }) {
    return ServiceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      label: label ?? this.label,
      identifier: identifier ?? this.identifier,
      iconUrl: iconUrl ?? this.iconUrl,
      isActive: isActive ?? this.isActive,
      isAvailableWithPhysicalCard: isAvailableWithPhysicalCard ?? this.isAvailableWithPhysicalCard,
      accountTypes: accountTypes ?? this.accountTypes,
      category: category ?? this.category,
      order: order ?? this.order,
      configuration: configuration ?? this.configuration,
    );
  }
}

extension ServiceEntityExtension on ServiceEntity {
  ServiceCategoryTypeEnum get getCategory {
    return ServiceCategoryTypeEnum.fromString(category);
  }

  /// Returns the identifier without the market iso code.
  String get getIdentifierGroup {
    return identifier.getServiceIdentifierGroup;
  }

  /// Returns the market iso code from the identifier.
  MarketIsoCodeEnum get getMarketIsoCode {
    final code = identifier.split('_').lastOrNull ?? '';
    return MarketIsoCodeEnum.fromCode(code);
  }

  ServiceIdentifierEnum get getIdentifierWithoutGrouping {
    return ServiceIdentifierEnum.fromString(identifier);
  }

  ServiceIdentifierEnum get getIdentifier {
    final i = getIdentifierGroup;
    final r = ServiceIdentifierEnum.fromString(i);
    if (!r.isUnknown) return r;
    return getIdentifierWithoutGrouping;
  }

  AccountTypeEnums get getAccountType {
    return accountTypes.map(AccountTypeEnum.fromString).toList();
  }

  BankDepositTypeEnum get getBankDepositType {
    if (!getIdentifier.isBankCashIn) {
      return BankDepositTypeEnum.unknown;
    }
    if (getIdentifier.isCashInWireTransfer) {
      return BankDepositTypeEnum.wireTransfer;
    }
    return BankDepositTypeEnum.cash;
  }

  String get getIntercomArticleId {
    return DP.asString(configuration['intercomArticleId']);
  }

  String get getCreditedPhoneNumberInputMask {
    return DP.asString(configuration['creditedPhoneNumberInputMask']);
  }

  String get getBillingLabel {
    return DP.asString(configuration['billingLabel'] ?? label);
  }

  bool get isNew {
    return DP.asBool(configuration['isNew']);
  }

  double get getMinimumAllowedAmount {
    return DP.asDouble(
      configuration.getOrElse(
        'minimumAllowedAmount',
        () => 200.0,
      ),
    );
  }

  double get getMaximumAllowedAmount {
    return DP.asDouble(
      configuration.getOrElse(
        'maximumAllowedAmount',
        () => 410000.0,
      ),
    );
  }

  bool get isBillingFeeEnabled {
    return DP.asBool(configuration['billingFeeEnabled']);
  }

  bool get isOperatorFeeEnabled {
    return DP.asBool(configuration['operatorFeeEnabled']);
  }

  bool get isWaveFeesEnabled {
    return DP.asBool(configuration['waveWithdrawalFeesDeactivated']);
  }

  double get getProviderFeeRate {
    return DP.asDouble(configuration['providerFeeRate']);
  }

  int get getAmountMultipleFactor {
    return DP.asInt(
      configuration['amountMultipleOf'],
      defaultValue: 100,
    );
  }

  bool get isPayingForWaveFees {
    return getIdentifier.isCashInWave && isWaveFeesEnabled;
  }

  double getFeesByAmount(double amount) {
    if (getProviderFeeRate == 0 || amount == 0) {
      return 0;
    }
    return ((getProviderFeeRate * amount) / 100).round().toDouble();
  }

  bool get shouldShowOtpField {
    return DP.asBool(configuration['showOtpField']);
  }

  String get getUssdCodeToDialDuringPaymentUrl {
    return DP.asString(configuration['ussdCodeToDialDuringPaymentUrl']);
  }

  int get getOTPValidLength {
    return DP.asInt(configuration['otpLength'], defaultValue: 4);
  }

  bool get useOtpGenerationDeeplink {
    return DP.asBool(configuration['useOtpGenerationDeeplink']);
  }

  String get getOTPGenerationDeeplink {
    return DP.asString(configuration['otpGenerationDeeplink']);
  }

  String get getDjamoPaymentValidationUrl {
    return DP.asString(configuration['djamoPaymentValidationUrl']);
  }

  bool get useDjamoPaymentValidation {
    return DP.asBool(configuration['useDjamoPaymentValidation']);
  }

  int get getDebitedPhoneNumberInputLength {
    return DP.asInt(configuration['debitedPhoneNumberInputLength']);
  }

  String get getDebitedPhoneNumberInputMask {
    return DP.asString(configuration['debitedPhoneNumberInputMask']);
  }

  String get getPendingScreenInstructions {
    return DP.asString(configuration['pendingScreenInstructions']);
  }

  String get getUrlAfterValidTransaction {
    return DP.asString(configuration['urlAfterValidTransaction']);
  }

  String get getUrlAfterFailedTransaction {
    return DP.asString(configuration['urlAfterFailedTransaction']);
  }

  bool get isMaxItAppValidationEnabled {
    return DP.asBool(configuration['displayMaxItAppValidation']);
  }

  bool get isOrangeAppValidationEnabled {
    return DP.asBool(configuration['displayOrangeAppValidation']);
  }

  bool get shouldUseExternalPaymentValidationForOrange {
    return getIdentifier.isCashInOrange && (isOrangeAppValidationEnabled || isMaxItAppValidationEnabled);
  }

  CashInServiceValidationModeEnum get getValidationMode {
    return CashInServiceValidationModeEnum.fromString(
      DP.asString(configuration['validationMode']),
    );
  }

  bool get shouldProcessTransferFees {
    return (getIdentifier.isTransfer || getIdentifierWithoutGrouping.isBankTransfer) && !getIdentifier.isLocalP2PTransfer;
  }

  bool get shouldShowPayOptInFee {
    if (getIdentifier.isTransferWave || getIdentifier.isP2PTransfer || getIdentifierWithoutGrouping.isBankTransfer) return false;
    return true;
  }

  double get getBankCashDepositStampFee {
    if (getMarketIsoCode.isSEN) {
      return 200;
    }
    return 100;
  }

  bool get isCashInIban {
    return [
      identifier.startsWith('ACCOUNT_NUMBER'),
      identifier.startsWith('IBAN_SERVICE'),
      id.contains('iban_wire_transfer_service_id'),
    ].contains(true);
  }

  bool get isFakeCashinDeposit {
    return identifier.contains('CASHIN_DEPOSIT') && identifier.contains('FAKE');
  }
}

extension GroupedServiceEntitiesX on GroupedServiceEntities {
  ServiceEntities getOr(ServiceCategoryTypeEnum key) {
    return this[key] ?? <ServiceEntity>[];
  }

  ServiceEntity getById(String id) {
    if (id.isEmpty) return ServiceEntity.empty;
    return values.expand((e) => e).firstWhere(
          (element) => element.id == id,
          orElse: () => ServiceEntity.empty,
        );
  }
}
