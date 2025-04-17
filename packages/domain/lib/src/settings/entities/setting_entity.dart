import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';

typedef SettingEntities = List<SettingEntity>;
typedef SettingWorkingBook = Map<SettingKeyEnum, SettingEntity>;

class SettingEntity extends BaseEntity {
  const SettingEntity({
    this.id = emptyString,
    this.isActive = false,
    this.label = emptyString,
    this.settingId = emptyString,
    this.value = emptyString,
    this.config,
  });

  final String id;
  final bool isActive;
  final String label;
  final String settingId;
  final String value;
  final dynamic config;

  JsonMap get configAsMap {
    return DP.asMap(config);
  }

  static const empty = SettingEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        isActive,
        label,
        settingId,
        value,
        config,
      ];
}

class FeatureFlags extends Equatable {
  const FeatureFlags({
    this.iban = false,
    this.vault = false,
    this.localAuth = false,
    this.enableNewCardPinResetFlowFor = const [],
    this.useNewPCRequestPassCodeReset = false,
    this.useNewVCRequestPassCodeReset = false,
  });

  factory FeatureFlags.fromJson(Map<String, dynamic> json) {
    return FeatureFlags(
      iban: DP.asBool(json['iban']),
      vault: DP.asBool(json['vault']),
      localAuth: DP.asBool(json['localAuth']),
      useNewVCRequestPassCodeReset: DP.asBool(json['useNewVCRequestPassCodeReset']),
      useNewPCRequestPassCodeReset: DP.asBool(json['useNewPCRequestPassCodeReset']),
      enableNewCardPinResetFlowFor: DP.asListOf<String>(json['enableNewCardPinResetFlowFor']),
    );
  }

  final bool iban;
  final bool vault;
  final bool localAuth;
  final bool useNewVCRequestPassCodeReset;
  final bool useNewPCRequestPassCodeReset;
  final List<String> enableNewCardPinResetFlowFor;

  Map<String, dynamic> toJson() {
    return {
      'iban': iban,
      'vault': vault,
      'localAuth': localAuth,
      'enableNewCardPinResetFlowFor': enableNewCardPinResetFlowFor,
      'useNewVCRequestPassCodeReset': useNewVCRequestPassCodeReset,
      'useNewPCRequestPassCodeReset': useNewPCRequestPassCodeReset,
    };
  }

  static const empty = FeatureFlags();

  bool get isNotEmptyObject => this != empty;

  @override
  List<Object> get props => [
        iban,
        vault,
        localAuth,
        useNewVCRequestPassCodeReset,
        enableNewCardPinResetFlowFor,
        useNewPCRequestPassCodeReset,
      ];
}

extension SettingEntityExtension on SettingEntity {
  SettingKeyEnum get getSettingKey {
    return SettingKeyEnum.fromString(settingId);
  }

  String get getShareQrCodeBaseUrl {
    return DP.asString(
      configAsMap.getOrElse(
        'shareQrCodeBaseUrl',
        () => '',
      ),
    );
  }

  FeatureFlags get getFeatureFlags {
    try {
      final data = jsonDecode(DP.asString(configAsMap['availableFeatures']));
      return FeatureFlags.fromJson(DP.asMap(data));
    } catch (_, __) {
      return FeatureFlags.empty;
    }
  }

  double get getCardCost {
    return DP.asDouble(configAsMap['cardCost'], defaultValue: 5000);
  }

  String get getIbanBicSwift {
    return DP.asString(configAsMap['bicSwift']);
  }

  String get getIbanFeatureName {
    final value = configAsMap.getOrElse('featureNameV2', () => configAsMap.getOrElse('featureName', () => 'IBAN'));
    return DP.asString(value);
  }

  String get getIbanShortenFeatureName {
    final c = configAsMap;
    final value = c.getOrElse('shortenFeatureNameV2', () => c.getOrElse('shortenFeatureName', () => 'IBAN'));
    return DP.asString(value);
  }

  String get getIbanIconUrl {
    return DP.asString(
      configAsMap.getOrElse(
        'iconUrl',
        () => 'https://djamo-static-assets.s3.us-east-2.amazonaws.com/assets/nrb_icon.png',
      ),
    );
  }

  String get getLoanConditionsDocumentUrl {
    return DP.asString(configAsMap['loanConditionsDocumentUrl']);
  }

  double get getLoanMinAmount {
    return DP.asDouble(configAsMap['loanMinAmount']);
  }

  double get getLoanMaxAmount {
    return DP.asDouble(configAsMap['loanMaxAmount']);
  }

  String get getLoanIconUrl {
    return DP.asString(configAsMap['loanIconUrl']);
  }

  double get getMaxLoanCapacity {
    return DP.asDouble(configAsMap['maxLoanCapacity'] ?? 150000);
  }

  int get getMinAppVersion {
    return DP.asInt(configAsMap['minAppVersion'], defaultValue: -1);
  }

  List<String> get getWhiteList {
    return DP.asListOf<String>(configAsMap['whiteList']);
  }

  String get getCustomerServicePhoneNumber {
    return DP.asString(configAsMap['customerServicePhoneNumber']);
  }

  String get getCallCenterAvailabilityMessage {
    return DP.asString(configAsMap['callCenterAvailability']);
  }

  String get getChatSupportAvailabilityMessage {
    return DP.asString(configAsMap['chatSupportAvailability']);
  }

  String get getTeamId {
    return DP.asString(configAsMap['teamId']);
  }

  String get getAppId {
    return DP.asString(configAsMap['appId']);
  }

  String get getEnv {
    return DP.asString(configAsMap['env']);
  }

  String get getVaultId {
    return DP.asString(configAsMap['vaultId']);
  }

  String get getPath {
    return DP.asString(configAsMap['path']);
  }

  String get getUserCanShowPanForPhysicalCard {
    return DP.asString(configAsMap['userCanShowPanForPhysicalCard']);
  }

  double get getAllowAmountToViewCard {
    return DP.asDouble(configAsMap['allowAmountToViewCard'], defaultValue: 1000); //Load from constant
  }

  bool get getVcUserCanShowPanWithoutKycSubmitted {
    return DP.asBool(configAsMap['vcUserCanShowPanWithoutKycSubmitted']);
  }

  bool get getEnableVCWireTransferService {
    return DP.asBool(configAsMap['enableVCWireTransferService']);
  }

  bool get getInvestEnableEducationFeature {
    return DP.asBool(configAsMap['enableEducationFeature']);
  }

  List<HelpArticleObject> getArticles({int? length}) {
    try {
      final decoded = jsonDecode(DP.asString(configAsMap.getOrElse('articles', () => '[]')));
      final parsed = DP.asListOf<JsonMap>(decoded);
      final total = parsed.length;
      return parsed.takeFirst(length ?? total).map(HelpArticleObject.fromJson).toList();
    } catch (_) {
      return [];
    }
  }

  FormPageObjects get getInvestForms {
    try {
      final decoded = jsonDecode(DP.asString(configAsMap.getOrElse('forms', () => '[]')));
      final parsed = DP.asListOf<JsonMap>(decoded);
      return parsed.map(FormPageObject.fromJson).toList();
    } catch (_) {
      return [];
    }
  }

  String get getInvestCguUrl {
    return DP.asString(configAsMap['cguUrl']);
  }

  String get getInvestReceiptWarningMessage {
    return DP.asString(configAsMap['receiptWarningMessage']);
  }

  String getBusinessUrl({required bool isSnUser, required String token}) {
    final url = DP.asString(configAsMap['url']);
    return url.replaceAll('{country}', isSnUser ? 'sen' : 'civ').replaceAll('{token}', token);
  }

  String get getIBANInternationalPrefixCode {
    return DP.asString(configAsMap['internationalPrefixCode']);
  }

  double get getCurrencyAmountToAddToEstimation => DP.asDouble(configAsMap['amountToAddToEstimation'], defaultValue: 500);

  double get getCurrencyRoundUpToNearestMultipleOf => DP.asDouble(configAsMap['roundUpToNearestMultipleOf'], defaultValue: 100);

  String get getCurrencyDefaultInputAmount => DP.asString(configAsMap['defaultInputAmount'] ?? '100');

  double get getCurrencyMinAmountForDiscount => DP.asDouble(configAsMap['minAmountForDiscount'], defaultValue: 100000);

  CurrencyConvertionEntities get getFxCurrencies {
    final currencies = DP.asString(configAsMap['currencies']);
    return CurrencyConversionModel.buildListFromString(currencies).map((e) => e.toEntity).toList();
  }

  List<({String name, String color, Map<String, dynamic> rates})> get competitors {
    try {
      final competitorsRates = DP.asMap(configAsMap['competitors']);
      return competitorsRates.entries.map((c) {
        final name = c.key;
        final value = DP.asMap(c.value);
        final color = DP.asString(value['color']);
        final rates = DP.asMap(value['rates']);
        return (
          name: name,
          color: color,
          rates: rates,
        );
      }).toList();
    } catch (_) {
      return [];
    }
  }

  String get referralAmount {
    return DP.asString(configAsMap['referralAmount']);
  }

  double get getMinAmountToShowCashInAgentUpSellComponent {
    return DP.asDouble(configAsMap['minAmountToShowCashInAgentUpSellComponent'], defaultValue: 300000);
  }
}

extension SettingWorkingBookX on SettingWorkingBook {
  SettingEntity getOr(SettingKeyEnum key) {
    return this[key] ?? SettingEntity.empty;
  }
}
