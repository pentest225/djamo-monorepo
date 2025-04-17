import 'package:domain/src/_core/_core.dart';

class TransactionFeeEntity extends BaseEntity {
  const TransactionFeeEntity({
    this.fee = 0.0,
  });

  final double fee;

  static const empty = TransactionFeeEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        fee,
      ];
}

extension TransactionFeeEntityExtension on TransactionFeeEntity {}
