import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/orders/_mappers/orders_auto_mapper.auto_mappr.dart';
import 'package:domain/src/orders/entities/entities.dart';
import 'package:domain/src/orders/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<OrderModel, OrderEntity>(reverse: true),
  MapType<OrderProductModel, OrderProductEntity>(reverse: true),
  MapType<OrderLocationModel, OrderLocationEntity>(reverse: true),
  MapType<DiscountModel, DiscountEntity>(reverse: true),
])
class OrdersAutoMapper extends $OrdersAutoMapper {
  const OrdersAutoMapper();
}
