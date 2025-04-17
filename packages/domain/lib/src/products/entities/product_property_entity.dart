import 'package:domain/src/_core/_core.dart';

class ProductPropertyEntity extends BaseEntity {
  const ProductPropertyEntity({
    this.id = emptyString,
    this.isActive = false,
    this.label = emptyString,
    this.order = 0,
  });

  final String id;
  final bool isActive;
  final String label;
  final int order;

  static const empty = ProductPropertyEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        isActive,
        label,
        order,
      ];
}

extension ProductPropertyEntityDomainExtension on ProductPropertyEntity {}
