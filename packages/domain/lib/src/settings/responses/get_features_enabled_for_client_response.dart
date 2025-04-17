import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/settings/enums/feature_flag_enum.dart';
import 'package:domain/src/settings/objects/feature_flag_object.dart';

class GetFeaturesEnabledForClientResponse extends BaseResponse {
  const GetFeaturesEnabledForClientResponse({
    required this.features,
    required this.data,
  });

  final FeatureFlagEnums features;
  final FlagData data;

  @override
  List<Object?> get props => [
        features,
        data,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'features': features.map((e) => e.feature).toList(),
      'data': data,
    };
  }
}

extension GetFeaturesEnabledForClientResponseExtension on GetFeaturesEnabledForClientResponse {}
