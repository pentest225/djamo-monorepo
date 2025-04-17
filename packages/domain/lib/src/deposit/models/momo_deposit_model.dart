import 'package:domain/src/_core/_core.dart';

class MomoDepositModel extends BaseModel {
  const MomoDepositModel({
    required this.id,
    required this.maxItPaymentUrl,
    required this.paymentUrl,
  });

  factory MomoDepositModel.fromJson(Map<String, dynamic> json) {
    return MomoDepositModel(
      id: DP.asString(json['id']),
      maxItPaymentUrl: DP.asString(json['maxItPaymentUrl']),
      paymentUrl: DP.asString(json['paymentUrl']),
    );
  }

  final String id;
  final String paymentUrl;
  final String maxItPaymentUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'maxItPaymentUrl': maxItPaymentUrl,
      'paymentUrl': paymentUrl,
    };
  }

  @override
  List<Object?> get props => [
        id,
        maxItPaymentUrl,
        paymentUrl,
      ];
}
