import 'package:domain/src/_core/_core.dart';

class UpdateBudgetPayload extends BasePayload {
  const UpdateBudgetPayload({
    required this.budgetId,
    required this.limit,
  });

  final String budgetId;
  final num limit;

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
    };
  }

  @override
  List<Object?> get props => [
        budgetId,
        limit,
      ];
}
