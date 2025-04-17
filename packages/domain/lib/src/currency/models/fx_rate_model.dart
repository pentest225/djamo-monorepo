import 'package:domain/src/_core/_core.dart';

typedef FxRateModels = List<FxRateModel>;

class FxRateModel extends BaseModel {
  const FxRateModel({
    required this.from,
    required this.to,
    required this.rate,
  });

  factory FxRateModel.fromJson(Map<String, dynamic> json) {
    return FxRateModel(
      from: DP.asString(json['from']),
      to: DP.asString(json['to']),
      rate: DP.asDouble(json['rate']),
    );
  }

  final String from;
  final String to;
  final double rate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to,
      'rate': rate,
    };
  }

  @override
  List<Object?> get props => [
        from,
        to,
        rate,
      ];
}

extension FxRateModelDomainExtension on FxRateModel {}
