import 'package:domain/src/_core/_core.dart';

class GetInvestCashbackPayload extends BasePayload {
  const GetInvestCashbackPayload({
    required this.productNames,
  });

  final List<String> productNames;

  Map<String, dynamic> toJson() {
    return {
      'productsNames': productNames,
    };
  }

  @override
  List<Object?> get props => [
        productNames,
      ];
}
