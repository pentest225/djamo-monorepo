import 'package:domain/src/_core/_core.dart';

typedef SettingModels = List<SettingModel>;

class SettingModel extends BaseModel {
  const SettingModel({
    required this.id,
    required this.isActive,
    required this.label,
    required this.settingId,
    required this.value,
    required this.config,
  });

  factory SettingModel.fromJson(Map<String, dynamic> json) {
    return SettingModel(
      id: DP.asString(json['id']),
      isActive: DP.asBool(json['isActive']),
      label: DP.asString(json['label']),
      settingId: DP.asString(json['settingId']),
      value: DP.asString(json['value']),
      config: json['config'],
    );
  }

  final String id;
  final bool isActive;
  final String label;
  final String settingId;
  final String value;
  final dynamic config;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isActive': isActive,
      'label': label,
      'settingId': settingId,
      'value': value,
      'config': config,
    };
  }

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

extension SettingModelExtension on SettingModel {}
