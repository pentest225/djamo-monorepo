import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/orders/entities/discount_entity.dart';
import 'package:domain/src/orders/entities/order_location_entity.dart';
import 'package:domain/src/orders/entities/order_product_entity.dart';
import 'package:domain/src/orders/enums/enums.dart';
import 'package:meta/meta.dart';

typedef OrderEntities = List<OrderEntity>;

class OrderEntity extends BaseEntity {
  const OrderEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.product = OrderProductEntity.empty,
    this.deliveryLocation = OrderLocationEntity.empty,
    this.pickupLocation = OrderLocationEntity.empty,
    this.homeLocation = OrderLocationEntity.empty,
    this.deliveryDate = emptyString,
    this.type = emptyString,
    this.deliveryTime = emptyString,
    this.profileComment = emptyString,
    this.status = emptyString,
    this.trackingNumber = emptyString,
    this.cardId = emptyString,
    this.lastFourDigits = emptyString,
    this.kycTrials = 0,
    this.extras = const {},
    this.discount = DiscountEntity.empty,
  });

  final String id;
  final String createdAt;
  final OrderProductEntity product;
  final OrderLocationEntity deliveryLocation;
  final OrderLocationEntity pickupLocation;
  final OrderLocationEntity homeLocation;
  final String deliveryDate;
  @internal
  final String type;
  final String deliveryTime;
  final String profileComment;
  @internal
  final String status;
  final String trackingNumber;
  final String cardId;
  final String lastFourDigits;
  final int kycTrials;
  final Map<String, dynamic> extras;
  final DiscountEntity discount;

  static const empty = OrderEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        product,
        deliveryLocation,
        pickupLocation,
        homeLocation,
        deliveryDate,
        type,
        deliveryTime,
        profileComment,
        status,
        trackingNumber,
        cardId,
        lastFourDigits,
        kycTrials,
        extras,
        discount,
      ];
}

extension OrderEntityExtension on OrderEntity {
  OrderRetrieveModeEnum get getType {
    return OrderRetrieveModeEnum.fromString(type);
  }

  OrderStatusEnum get getStatus {
    return OrderStatusEnum.fromString(status);
  }

  DateTime? get getOrderedDate {
    return DateTime.tryParse(createdAt);
  }

  DateTime? get getDeliveryDate {
    return DateTime.tryParse(deliveryDate);
  }
}
