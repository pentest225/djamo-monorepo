import 'package:domain/src/settings/entities/entities.dart';
import 'package:domain/src/settings/entities/setting_entity.dart';
import 'package:domain/src/settings/enums/enums.dart';
import 'package:equatable/equatable.dart';

class SettingsWrapper extends Equatable {
  const SettingsWrapper({
    SettingWorkingBook settings = const {},
  }) : _settings = settings;
  final SettingWorkingBook _settings;

  SettingEntity get marketCampaignSetting {
    return _getSettingOr(SettingKeyEnum.marketCampaignSetting);
  }

  SettingEntity get vaultConfig {
    return _getSettingOr(SettingKeyEnum.vaultConfig);
  }

  SettingEntity get campaignSharedMessage {
    return _getSettingOr(SettingKeyEnum.campaignSharedMessage);
  }

  SettingEntity get otherFeatures {
    return _getSettingOr(SettingKeyEnum.otherFeatures);
  }

  SettingEntity get vgsSettings {
    return _getSettingOr(SettingKeyEnum.vgsSettings);
  }

  SettingEntity get accountStatement {
    return _getSettingOr(SettingKeyEnum.accountStatement);
  }

  SettingEntity get contractEndpoint {
    return _getSettingOr(SettingKeyEnum.contractEndpoint);
  }

  SettingEntity get transactionReceiptLink {
    return _getSettingOr(SettingKeyEnum.transactionReceiptLink);
  }

  SettingEntity get adjustEventTokens {
    return _getSettingOr(SettingKeyEnum.adjustEventTokens);
  }

  SettingEntity get budgetFeature {
    return _getSettingOr(SettingKeyEnum.budgetFeature);
  }

  SettingEntity get investFeature {
    return _getSettingOr(SettingKeyEnum.investFeature);
  }

  SettingEntity get loanSetting {
    return _getSettingOr(SettingKeyEnum.loanSetting);
  }

  SettingEntity get appCachingDurations {
    return _getSettingOr(SettingKeyEnum.appCachingDurations);
  }

  SettingEntity get appFeatureFlags {
    return _getSettingOr(SettingKeyEnum.appFeatureFlags);
  }

  SettingEntity get yearRecap {
    return _getSettingOr(SettingKeyEnum.yearRecap);
  }

  SettingEntity get iban {
    return _getSettingOr(SettingKeyEnum.iban);
  }

  SettingEntity get bills {
    return _getSettingOr(SettingKeyEnum.bills);
  }

  //cardCashIn
  SettingEntity get cardCashIn {
    return _getSettingOr(SettingKeyEnum.cardCashIn);
  }

  //phone_number_config
  SettingEntity get phoneNumberConfig {
    return _getSettingOr(SettingKeyEnum.phoneNumberConfig);
  }

  SettingEntity _getSettingOr(SettingKeyEnum key) {
    return _settings[key] ?? SettingEntity.empty;
  }

  SettingEntity get fxRates {
    return _getSettingOr(SettingKeyEnum.fxRates);
  }

  static const empty = SettingsWrapper();
  @override
  List<Object> get props => [_settings];
}
