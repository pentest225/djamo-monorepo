import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/products/_mappers/products_auto_mapper.auto_mappr.dart';
import 'package:domain/src/products/entities/entities.dart';
import 'package:domain/src/products/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<ProductPropertyModel, ProductPropertyEntity>(reverse: true),
  MapType<ProductCounterModel, ProductCounterEntity>(reverse: true),
  MapType<ProductModel, ProductEntity>(reverse: true),
])
class ProductsAutoMapper extends $ProductsAutoMapper {
  const ProductsAutoMapper();
}
