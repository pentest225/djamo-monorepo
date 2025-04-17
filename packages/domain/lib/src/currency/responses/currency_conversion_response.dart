import 'package:domain/src/_core/_core.dart';

typedef CurrencyConversionResponses = List<CurrencyConversionResponse>;

class CurrencyConversionResponse extends BaseResponse {
  const CurrencyConversionResponse({
    required this.rate,
    required this.convertedAmount,
    required this.djamoFee,
    required this.discountApplied,
    required this.discountPercentage,
  });

  factory CurrencyConversionResponse.fromJson(Map<String, dynamic> json) {
    return CurrencyConversionResponse(
      rate: DP.asDouble(json['rate']),
      convertedAmount: DP.asDouble(json['convertedAmount']),
      djamoFee: DP.asDouble(json['djamoFee']),
      discountApplied: DP.asBool(json['discountApplied']),
      discountPercentage: DP.asDouble(json['discountPercentage']),
    );
  }

  static const empty = CurrencyConversionResponse(
    rate: 0,
    convertedAmount: 0,
    djamoFee: 0,
    discountApplied: false,
    discountPercentage: 0,
  );

  bool get isEmpty => this == empty;

  final double rate;
  final double convertedAmount;
  final double djamoFee;
  final bool discountApplied;
  final double discountPercentage;

  @override
  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'convertedAmount': convertedAmount,
      'djamoFee': djamoFee,
      'discountApplied': discountApplied,
      'discountPercentage': discountPercentage,
    };
  }

  @override
  List<Object?> get props => [
        rate,
        convertedAmount,
        djamoFee,
        discountApplied,
        discountPercentage,
      ];
}

extension CurrencyConversionResponseDomainExtension on CurrencyConversionResponse {
  double get discountedRate {
    if (discountApplied || discountPercentage <= 0) {
      return rate;
    } else {
      return rate - (rate * (discountPercentage / 100));
    }
  }
}
