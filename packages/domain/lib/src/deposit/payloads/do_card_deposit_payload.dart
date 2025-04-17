import 'package:domain/src/_core/_core.dart';

class DoCardDepositPayload extends BasePayload {
  const DoCardDepositPayload({
    required this.amount,
  });

  final double amount;

  Map<String, dynamic> toJson() {
    return {
      'amount': amount.toInt(),
    };
  }

  @override
  List<Object?> get props => [
        amount,
      ];
}
