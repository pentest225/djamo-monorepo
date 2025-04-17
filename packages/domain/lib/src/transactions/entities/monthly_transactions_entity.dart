import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/transactions/entities/transaction_entity.dart';
import 'package:petit_extension/petit_extension.dart';

class MonthlyTransactionsEntity extends BaseEntity {
  const MonthlyTransactionsEntity({
    this.month = emptyString,
    this.debit = const [],
    this.credit = const [],
  });

  final String month;
  final TransactionEntities debit;
  final TransactionEntities credit;

  static const empty = MonthlyTransactionsEntity();
  bool get isEmpty => this == empty;

  MonthlyTransactionsEntity copyWith({
    String? month,
    TransactionEntities? debit,
    TransactionEntities? credit,
  }) {
    return MonthlyTransactionsEntity(
      month: month ?? this.month,
      debit: debit ?? this.debit,
      credit: credit ?? this.credit,
    );
  }

  @override
  List<Object?> get props => [
        month,
        debit,
        credit,
      ];
}

extension MonthlyTransactionsEntityDomainExtension on MonthlyTransactionsEntity {
  TransactionEntities get transactions {
    final t = (debit + credit)
      ..sort((a, b) => b.getCreatedAt!.compareTo(a.getCreatedAt!))
      ..distinctBy((e) => e.id);
    return t;
  }

  bool get hasPaymentTransaction {
    return debit.any((e) => e.isPayment);
  }
}
