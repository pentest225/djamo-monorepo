import 'package:domain/src/_core/_core.dart';

class CalculateServiceFeesResponse extends BaseModel {
  const CalculateServiceFeesResponse({
    required this.operatorRate,
    required this.operatorFee,
    required this.billingRate,
    required this.billingFee,
    required this.amount,
    required this.waveFee,
    required this.waveRate,
  });

  factory CalculateServiceFeesResponse.fromJson(Map<String, dynamic> json) {
    return CalculateServiceFeesResponse(
      operatorRate: DP.asDouble(json['operatorRate']),
      operatorFee: DP.asDouble(json['operatorFee']),
      billingRate: DP.asDouble(json['billingRate']),
      billingFee: DP.asDouble(json['billingFee']),
      amount: DP.asDouble(json['amount']),
      waveFee: DP.asDouble(json['waveFee']),
      waveRate: DP.asDouble(json['waveRate']),
    );
  }

  final double operatorRate;
  final double operatorFee;
  final double billingRate;
  final double billingFee;
  final double amount;
  final double waveFee;
  final double waveRate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'operatorRate': operatorRate,
      'operatorFee': operatorFee,
      'billingRate': billingRate,
      'billingFee': billingFee,
      'amount': amount,
      'waveFee': waveFee,
      'waveRate': waveRate,
    };
  }

  static const empty = CalculateServiceFeesResponse(
    operatorRate: 0,
    operatorFee: 0,
    billingRate: 0,
    billingFee: 0,
    amount: 0,
    waveFee: 0,
    waveRate: 0,
  );

  @override
  List<Object?> get props => [
        operatorRate,
        operatorFee,
        billingRate,
        billingFee,
        amount,
        waveFee,
        waveRate,
      ];

  CalculateServiceFeesResponse copyWith({
    double? operatorRate,
    double? operatorFee,
    double? billingRate,
    double? billingFee,
    double? amount,
    double? waveFee,
    double? waveRate,
  }) {
    return CalculateServiceFeesResponse(
      operatorRate: operatorRate ?? this.operatorRate,
      operatorFee: operatorFee ?? this.operatorFee,
      billingRate: billingRate ?? this.billingRate,
      billingFee: billingFee ?? this.billingFee,
      amount: amount ?? this.amount,
      waveFee: waveFee ?? this.waveFee,
      waveRate: waveRate ?? this.waveRate,
    );
  }
}

extension CalculateServiceFeesResponseExtension on CalculateServiceFeesResponse {
  bool get isWaveFeesReturned {
    if (amount <= 0) return false;
    return waveFee > 0 && waveRate > 0;
  }
}
