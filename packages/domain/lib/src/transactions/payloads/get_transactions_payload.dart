import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/enums/enums.dart';
import 'package:domain/src/transactions/enums/enums.dart';
import 'package:petit_extension/petit_extension.dart';

class GetTransactionsPayload extends BasePayload {
  const GetTransactionsPayload({
    this.cursor = emptyString,
    this.limit = 0,
    this.accountId = emptyString,
    this.accountCategory = AccountCategoryEnum.undefined,
    this.startDate = emptyString,
    this.endDate = emptyString,
    this.type = TransactionTypeEnum.undefined,
    this.transactionCategoryId,
  });

  factory GetTransactionsPayload.primary({
    String? cursor,
    int? limit = 30,
    String? transactionCategoryId,
    TransactionTypeEnum transactionType = TransactionTypeEnum.undefined,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return GetTransactionsPayload.recent(
      cursor: cursor ?? emptyString,
      limit: limit,
      accountCategory: AccountCategoryEnum.primary,
      transactionCategoryId: transactionCategoryId,
      transactionType: transactionType,
      startDate: startDate,
      endDate: endDate,
    );
  }

  factory GetTransactionsPayload.loan({
    String? cursor,
    int? limit = 30,
    String? accountId,
    TransactionTypeEnum transactionType = TransactionTypeEnum.undefined,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return GetTransactionsPayload.recent(
      cursor: cursor ?? emptyString,
      limit: limit,
      accountCategory: AccountCategoryEnum.loan,
      accountId: accountId ?? '',
      transactionType: transactionType,
      startDate: startDate,
      endDate: endDate,
    );
  }

  factory GetTransactionsPayload.vault({
    required String accountId,
    String? cursor,
    int? limit,
    TransactionTypeEnum transactionType = TransactionTypeEnum.undefined,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return GetTransactionsPayload.recent(
      accountId: accountId,
      cursor: cursor ?? emptyString,
      limit: limit,
      accountCategory: AccountCategoryEnum.vault,
      transactionType: transactionType,
      startDate: startDate,
      endDate: endDate,
    );
  }

  factory GetTransactionsPayload.recent({
    String? cursor,
    String? accountId,
    int? limit,
    String? transactionCategoryId,
    AccountCategoryEnum accountCategory = AccountCategoryEnum.undefined,
    TransactionTypeEnum transactionType = TransactionTypeEnum.undefined,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    final today = DateTime.now();
    final sixMonthsAgo = today.subtract(const Duration(days: 180));
    return GetTransactionsPayload(
      cursor: cursor ?? emptyString,
      limit: limit ?? 15,
      accountId: accountId ?? emptyString,
      startDate: (startDate ?? sixMonthsAgo).formatAs('yyyy-MM-dd', locale: 'en'),
      endDate: (endDate ?? today).formatAs('yyyy-MM-dd', locale: 'en'),
      accountCategory: accountCategory,
      transactionCategoryId: transactionCategoryId,
      type: transactionType,
    );
  }

  final String cursor;
  final int limit;
  final String accountId;
  final AccountCategoryEnum accountCategory;
  final String startDate;
  final String endDate;
  final TransactionTypeEnum type;
  final String? transactionCategoryId;

  String get getSignature {
    final period = _getPeriodSignature;
    return 'P:$period|A:$accountId|C:${accountCategory.identifier}|T:${type.key}|TC:$transactionCategoryId'.trim().toUpperCase();
  }

  String get _getPeriodSignature {
    final s = DateTime.tryParse(startDate);
    final e = DateTime.tryParse(endDate);
    if (s == null || e == null) {
      return '';
    }
    return '${s.formatAs('yyyy-MM-dd', locale: 'en')}_${e.formatAs('yyyy-MM-dd', locale: 'en')}'.trim();
  }

  bool get isSameMonthAndYear {
    final s = DateTime.tryParse(startDate);
    final e = DateTime.tryParse(endDate);
    if (s == null || e == null) {
      return false;
    }
    return s.isAtSameMonthAs(e) && s.isAtSameYearAs(DateTime.now());
  }

  Map<String, dynamic> toJson() {
    return {
      if (cursor.isNotEmpty) 'cursor': cursor,
      if (limit > 0) 'limit': limit,
      if (accountId.isNotEmpty) 'accountId': accountId,
      if (!accountCategory.isUndefined) 'category': accountCategory.identifier,
      if (startDate.isNotEmpty) 'startDate': startDate,
      if (endDate.isNotEmpty) 'endDate': endDate,
      if (!type.isUndefined) 'type': type.key,
      if (transactionCategoryId != null) 'transactionCategoryId': transactionCategoryId.orNull ?? 'null',
    };
  }

  GetTransactionsPayload copyWith({
    String? cursor,
    int? limit,
    String? accountId,
    AccountCategoryEnum? accountCategory,
    String? startDate,
    String? endDate,
    TransactionTypeEnum? type,
    String? transactionCategoryId,
  }) {
    return GetTransactionsPayload(
      cursor: cursor ?? this.cursor,
      limit: limit ?? this.limit,
      accountId: accountId ?? this.accountId,
      accountCategory: accountCategory ?? this.accountCategory,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      type: type ?? this.type,
      transactionCategoryId: transactionCategoryId ?? this.transactionCategoryId,
    );
  }

  static const empty = GetTransactionsPayload();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        cursor,
        limit,
        accountId,
        accountCategory,
        startDate,
        endDate,
        type,
        transactionCategoryId,
      ];
}
