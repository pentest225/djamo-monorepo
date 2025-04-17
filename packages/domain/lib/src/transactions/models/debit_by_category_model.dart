import 'package:domain/src/_core/_core.dart';

typedef DebitByCategoryModels = List<DebitByCategoryModel>;

class DebitByCategoryModel extends BaseModel {
  const DebitByCategoryModel({
    required this.categoryId,
    required this.categoryLabel,
    required this.categoryIcon,
    required this.categoryTotalDebit,
    required this.budgetLimit,
    required this.budgetId,
  });

  factory DebitByCategoryModel.fromJson(Map<String, dynamic> json) {
    return DebitByCategoryModel(
      categoryId: DP.asString(json['categoryId']),
      categoryLabel: DP.asString(json['categoryLabel']),
      categoryIcon: DP.asString(json['categoryIcon']),
      categoryTotalDebit: DP.asDouble(json['categoryTotalDebit']),
      budgetLimit: DP.asDouble(json['budgetLimit']),
      budgetId: DP.asString(json['budgetId']),
    );
  }

  final String categoryId;
  final String categoryLabel;
  final String categoryIcon;
  final double categoryTotalDebit;
  final double budgetLimit;
  final String budgetId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'categoryLabel': categoryLabel,
      'categoryIcon': categoryIcon,
      'categoryTotalDebit': categoryTotalDebit,
      'budgetLimit': budgetLimit,
      'budgetId': budgetId,
    };
  }

  @override
  List<Object?> get props => [
        categoryId,
        categoryLabel,
        categoryIcon,
        categoryTotalDebit,
        budgetLimit,
        budgetId,
      ];
}

extension DebitByCategoryModelDomainExtension on DebitByCategoryModel {}
