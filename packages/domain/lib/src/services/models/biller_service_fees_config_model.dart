import 'package:domain/src/_core/_core.dart';

class BillerServiceFeesConfigModel extends BaseModel {
  const BillerServiceFeesConfigModel({
    required this.type,
    required this.value,
  });

  factory BillerServiceFeesConfigModel.fromJson(Map<String, dynamic> json) {
    return BillerServiceFeesConfigModel(
      type: DP.asString(json['type']),
      value: DP.asNum(json['value']),
    );
  }

  final String type;
  final num value;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
    };
  }

  @override
  List<Object?> get props => [
        type,
        value,
      ];
}

extension BillerServiceFeesConfigModelDomainExtension on BillerServiceFeesConfigModel {}
