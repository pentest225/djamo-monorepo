import 'package:domain/src/_core/helpers/helpers.dart';
import 'package:domain/src/_core/types/types.dart';
import 'package:domain/src/settings/enums/feature_flag_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:petit_extension/petit_extension.dart';

typedef FlagData = Map<FeatureFlagEnum, JsonMap>;

class FeatureFlagObject extends Equatable {
  const FeatureFlagObject({
    required Set<FeatureFlagEnum> fromFeatures,
    required Set<FeatureFlagEnum> fromEnv,
    required FlagData dataFromFeatures,
    required FlagData dataFromSettings,
  })  : _fromFeatures = fromFeatures,
        _fromEnv = fromEnv,
        _dataFromFeatures = dataFromFeatures,
        _dataFromSettings = dataFromSettings;

  final FeatureFlagEnums _fromFeatures;
  final FeatureFlagEnums _fromEnv;
  final FlagData _dataFromFeatures;
  final FlagData _dataFromSettings;

  bool isEnable(FeatureFlagEnum feature) {
    return _fromFeatures.contains(feature) || _fromEnv.contains(feature);
  }

  FeatureFlagData data(FeatureFlagEnum feature) {
    final data = DP.asMap(_dataFromFeatures[feature] ?? _dataFromSettings[feature]);
    return FeatureFlagData._(data);
  }

  static const FeatureFlagObject empty = FeatureFlagObject(
    fromFeatures: {},
    fromEnv: {},
    dataFromFeatures: {},
    dataFromSettings: {},
  );

  FeatureFlagObject copyWith({
    FeatureFlagEnums? fromFeatures,
    FeatureFlagEnums? fromEnv,
    FlagData? dataFromFeatures,
    FlagData? dataFromSettings,
  }) {
    return FeatureFlagObject(
      fromFeatures: fromFeatures ?? _fromFeatures,
      fromEnv: fromEnv ?? _fromEnv,
      dataFromFeatures: dataFromFeatures ?? _dataFromFeatures,
      dataFromSettings: dataFromSettings ?? _dataFromSettings,
    );
  }

  @override
  List<Object> get props => [
        _fromFeatures,
        _fromEnv,
        _dataFromFeatures,
        _dataFromSettings,
      ];
}

extension FeatureFlagObjectDomainX on FeatureFlagObject {}

extension type FeatureFlagData._(JsonMap d) {
  // Currency
  double get getTransactionVerificationProofMinAmount => DP.asDouble(d['minAmount'] ?? '0');

  List<String> get getTransactionVerificationProofAllowedCards => DP.asListOf(d['allowedCards']);

  String get getIbanFeatureName {
    final value = d.getOrElse('featureNameV2', () => d.getOrElse('featureName', () => 'IBAN'));
    return DP.asString(value);
  }

  String get getIbanShortenFeatureName {
    final value = d.getOrElse('shortenFeatureNameV2', () => d.getOrElse('shortenFeatureName', () => 'IBAN'));
    return DP.asString(value);
  }
}
