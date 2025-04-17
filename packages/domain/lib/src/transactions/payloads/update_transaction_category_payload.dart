import 'package:domain/src/_core/_core.dart';

class UpdateTransactionCategoryPayload extends BasePayload {
  const UpdateTransactionCategoryPayload({
    required this.transactionId,
    required this.categoryId,
  });

  final String transactionId;
  final String categoryId;

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
    };
  }

  @override
  List<Object?> get props => [
        transactionId,
        categoryId,
      ];
}
