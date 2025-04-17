import 'package:domain/domain.dart';
import 'package:meta/meta.dart';

typedef DebitByCategoryEntites = List<DebitByCategoryEntity>;

@immutable
class DebitByCategoryEntity extends BaseEntity {
  const DebitByCategoryEntity({
    this.categoryId = '',
    this.categoryLabel = '',
    this.categoryIcon = '',
    this.categoryTotalDebit = 0.0,
    this.budgetLimit = 0.0,
    this.budgetId = '',
  });

  final String categoryId;
  final String categoryLabel;
  final String categoryIcon;
  final double categoryTotalDebit;
  final double budgetLimit;
  final String budgetId;

  @override
  List<Object> get props => [
        categoryId,
        categoryLabel,
        categoryIcon,
        categoryTotalDebit,
        budgetLimit,
        budgetId,
      ];

  DebitByCategoryEntity copyWith({
    String? categoryId,
    String? categoryLabel,
    String? categoryIcon,
    double? categoryTotalDebit,
    double? budgetLimit,
    String? budgetId,
  }) {
    return DebitByCategoryEntity(
      categoryId: categoryId ?? this.categoryId,
      categoryLabel: categoryLabel ?? this.categoryLabel,
      categoryIcon: categoryIcon ?? this.categoryIcon,
      categoryTotalDebit: categoryTotalDebit ?? this.categoryTotalDebit,
      budgetLimit: budgetLimit ?? this.budgetLimit,
      budgetId: budgetId ?? this.budgetId,
    );
  }
}
