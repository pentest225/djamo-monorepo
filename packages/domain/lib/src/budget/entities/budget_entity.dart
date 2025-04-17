import 'package:domain/src/_core/_core.dart';

typedef BudgetEntities = List<BudgetEntity>;

class BudgetEntity extends BaseEntity {
  const BudgetEntity({
    this.id = emptyString,
    this.categoryId = emptyString,
    this.limit = 0.0,
  });

  final String id;
  final String categoryId;
  final double limit;

  static const empty = BudgetEntity();
  bool get isEmpty => this == empty || categoryId.isEmpty;

  BudgetEntity copyWith({
    String? id,
    String? categoryId,
    double? limit,
  }) {
    return BudgetEntity(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      limit: limit ?? this.limit,
    );
  }

  @override
  List<Object?> get props => [
        id,
        categoryId,
        limit,
      ];
}

extension BudgetEntityDomainExtension on BudgetEntity {}
