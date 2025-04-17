import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/products/enums/product_property_identifier_enum.dart';

typedef ProductCounterEntities = List<ProductCounterEntity>;

class ProductCounterEntity extends BaseEntity {
  const ProductCounterEntity({
    this.id = emptyString,
    this.label = emptyString,
    this.transactionLabel = emptyString,
    this.billingLabel = emptyString,
    this.type = emptyString,
  });

  /// Unique identifier of the property
  /// Get the [ProductPropertyIdentifierEnum] from the [id]
  /// by calling [identifier] extension method
  final String id;
  final String label;
  final String transactionLabel;
  final String billingLabel;
  final String type;

  static const empty = ProductCounterEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        label,
        transactionLabel,
        billingLabel,
        type,
      ];
}

extension ProductPropertyEntityExtension on ProductCounterEntity {
  ProductPropertyIdentifierEnum get identifier {
    return ProductPropertyIdentifierEnum.fromIdentifier(id);
  }
}
