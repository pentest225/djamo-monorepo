import 'package:dartx/dartx.dart';
import 'package:domain/src/settings/entities/entities.dart';
import 'package:domain/src/settings/enums/enums.dart';
import 'package:domain/src/settings/settings_store_wrapper.dart';

extension DomainSettingsStoreWrapperX on SettingsStoreWrapper {
  //clientAppVersionManagerConfig
  SettingEntity get clientAppVersionManagerConfig {
    return _getSettingOr(SettingKeyEnum.clientAppVersionManagerConfig);
  }

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

  SettingEntity get phoneNumber {
    return _getSettingOr(SettingKeyEnum.phoneNumberConfig);
  }

  SettingEntity get supportSettings {
    return _getSettingOr(SettingKeyEnum.supportSettings);
  }

  SettingEntity get kycSettings {
    return _getSettingOr(SettingKeyEnum.kycSettings);
  }

  SettingEntity get businessSetting {
    return _getSettingOr(SettingKeyEnum.businessSettings);
  }

  SettingEntity get fxRatesSetting {
    return _getSettingOr(SettingKeyEnum.fxRates);
  }

  SettingEntity _getSettingOr(SettingKeyEnum key) {
    return value<SettingWorkingBook>().getOrElse(
      key,
      () => SettingEntity.empty,
    );
  }

  DeviceConfigEntity get deviceConfig => value<DeviceConfigEntity>();
}
