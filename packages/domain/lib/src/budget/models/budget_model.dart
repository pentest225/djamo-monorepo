import 'package:domain/src/_core/_core.dart';

typedef BudgetModels = List<BudgetModel>;

class BudgetModel extends BaseModel {
  const BudgetModel({
    required this.id,
    required this.categoryId,
    required this.limit,
  });

  factory BudgetModel.fromJson(Map<String, dynamic> json) {
    return BudgetModel(
      id: DP.asString(json['id']),
      categoryId: DP.asString(json['categoryId']),
      limit: DP.asDouble(json['limit']),
    );
  }

  final String id;
  final String categoryId;
  final double limit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryId': categoryId,
      'limit': limit,
    };
  }

  @override
  List<Object?> get props => [
        id,
        categoryId,
        limit,
      ];
}

extension BudgetModelDomainExtension on BudgetModel {}
