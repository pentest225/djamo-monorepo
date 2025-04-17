import 'package:domain/src/transactions/entities/entities.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ClientAccountTransactionsObject extends Equatable {
  const ClientAccountTransactionsObject({
    required Map<String, TransactionEntities> recentTransactions,
  }) : _recentTransactions = recentTransactions;

  final Map<String, TransactionEntities> _recentTransactions;

  TransactionEntities getAccountRecentTransactions(String accountId) {
    return _recentTransactions[accountId] ?? [];
  }

  TransactionEntities get getAllRecentTransactions {
    return _recentTransactions.entries.expand((e) => e.value).toList();
  }

  TransactionEntity getLastDepositTransaction() {
    final transactions = getAllRecentTransactions;
    return transactions.firstWhere(
      (transaction) => transaction.transactionServiceName.startsWith('CASHIN'),
      orElse: () => TransactionEntity.empty,
    );
  }

  static const empty = ClientAccountTransactionsObject(
    recentTransactions: {},
  );

  ClientAccountTransactionsObject copyWith({
    Map<String, TransactionEntities>? recentTransactions,
  }) {
    return ClientAccountTransactionsObject(
      recentTransactions: recentTransactions ?? _recentTransactions,
    );
  }

  @override
  List<Object> get props => [_recentTransactions];
}
