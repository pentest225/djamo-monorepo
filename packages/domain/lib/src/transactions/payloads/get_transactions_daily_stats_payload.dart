import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/enums/account_category_enum.dart';

class GetTransactionsDailyStatsPayload extends BasePayload {
  const GetTransactionsDailyStatsPayload({
    required this.date,
    this.accountId = emptyString,
    this.category = AccountCategoryEnum.undefined,
  });

  final String date;
  final String accountId;
  final AccountCategoryEnum category;

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      if (accountId.isNotEmpty) 'accountId': accountId,
      if (!category.isUndefined) 'category': category.identifier,
    };
  }

  @override
  List<Object?> get props => [
        date,
        accountId,
        category,
      ];
}
