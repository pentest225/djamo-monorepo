import 'package:domain/src/_core/_core.dart';

class CreateBudgetPayload extends BasePayload {
  const CreateBudgetPayload({
    required this.categoryId,
    required this.limit,
  });

  final String categoryId;
  final num limit;

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'limit': limit,
    };
  }

  @override
  List<Object?> get props => [
        categoryId,
        limit,
      ];
}
