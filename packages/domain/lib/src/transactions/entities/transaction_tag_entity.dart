import 'package:domain/src/_core/_core.dart';

class TransactionTagEntity extends BaseEntity {
  const TransactionTagEntity({
    this.label = emptyString,
    this.bgColor = emptyString,
    this.textColor = emptyString,
  });

  final String label;
  final String bgColor;
  final String textColor;

  static const empty = TransactionTagEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        label,
        bgColor,
        textColor,
      ];
}

extension TransactionTagEntityExtension on TransactionTagEntity {}
