import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/products/entities/product_counter_entity.dart';
import 'package:domain/src/products/entities/product_property_entity.dart';
import 'package:domain/src/products/enums/enums.dart';

typedef ProductEntities = List<ProductEntity>;

class ProductEntity extends BaseEntity {
  const ProductEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.type = emptyString,
    this.identifier = emptyString,
    this.counters = const [],
    this.properties = const [],
    this.configuration = const {},
  });

  final String id;
  final String name;
  final String type;
  final String identifier;
  final List<ProductCounterEntity> counters;
  final List<ProductPropertyEntity> properties;
  final Map<String, dynamic> configuration;

  static const empty = ProductEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        identifier,
        counters,
        properties,
        configuration,
      ];
}

extension ProductEntityExtension on ProductEntity {
  ProductTypeEnum get productType => ProductTypeEnum.fromString(identifier);
  bool get isPremiumProduct => identifier.toLowerCase() == ProductTypeEnum.premium.name;
  bool get isFreeProduct => identifier.toLowerCase() == ProductTypeEnum.free.name;

  String get monthlyFeeText => configuration['monthlyFeeText'].toString();

  double get cost {
    if (productType.isFree) return 0;
    return DP.asDouble(configuration.getOrElse('cardCost', () => 0));
  }

  bool get isPopular => isPremiumProduct;
}
