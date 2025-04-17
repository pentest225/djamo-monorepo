import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/enums/enums.dart';

class GetMonthlyTransactionSummaryPayload extends BasePayload {
  const GetMonthlyTransactionSummaryPayload({
    this.accountId,
    this.category = AccountCategoryEnum.undefined,
  });

  final String? accountId;
  final AccountCategoryEnum category;

  Map<String, dynamic> toJson() {
    return {
      if (accountId != null && accountId!.isNotEmpty) 'accountId': accountId,
      if (!category.isUndefined) 'category': category.identifier,
    };
  }

  @override
  List<Object?> get props => [
        accountId,
        category,
      ];
}
