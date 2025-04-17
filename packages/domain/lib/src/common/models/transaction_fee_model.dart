import 'package:domain/src/_core/_core.dart';

class TransactionFeeModel extends BaseModel {
  const TransactionFeeModel({
    required this.fee,
  });

  factory TransactionFeeModel.fromJson(Map<String, dynamic> json) {
    return TransactionFeeModel(
      fee: DP.asDouble(json['fee']),
    );
  }

  final double fee;

  @override
  Map<String, dynamic> toJson() {
    return {
      'fee': fee,
    };
  }

  @override
  List<Object?> get props => [
        fee,
      ];
}

extension TransactionFeeModelExtension on TransactionFeeModel {}
