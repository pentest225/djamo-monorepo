import 'package:domain/src/_core/_core.dart';

class FeesModel extends BaseModel {
  const FeesModel({
    required this.currency,
    required this.rate,
    required this.value,
  });

  factory FeesModel.fromJson(Map<String, dynamic> json) {
    return FeesModel(
      currency: DP.asString(json['currency']),
      rate: DP.asNum(json['rate']),
      value: DP.asNum(json['value']),
    );
  }

  final String currency;
  final num rate;
  final num value;

  @override
  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'rate': rate,
      'value': value,
    };
  }

  @override
  List<Object?> get props => [
        currency,
        rate,
        value,
      ];
}

extension FeesModelDomainExtension on FeesModel {}
