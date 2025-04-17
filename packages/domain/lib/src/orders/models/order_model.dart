import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/orders/models/discount_model.dart';
import 'package:domain/src/orders/models/order_location_model.dart';
import 'package:domain/src/orders/models/order_product_model.dart';

typedef OrderModels = List<OrderModel>;

class OrderModel extends BaseModel {
  const OrderModel({
    required this.id,
    required this.createdAt,
    required this.product,
    required this.deliveryLocation,
    required this.pickupLocation,
    required this.homeLocation,
    required this.deliveryDate,
    required this.type,
    required this.deliveryTime,
    required this.profileComment,
    required this.status,
    required this.trackingNumber,
    required this.cardId,
    required this.lastFourDigits,
    required this.kycTrials,
    required this.extras,
    required this.discount,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      product: OrderProductModel.fromJson(DP.asMap(json['product'])),
      deliveryLocation: OrderLocationModel.fromJson(DP.asMap(json['deliveryLocation'])),
      pickupLocation: OrderLocationModel.fromJson(DP.asMap(json['pickupLocation'])),
      homeLocation: OrderLocationModel.fromJson(DP.asMap(json['homeLocation'])),
      deliveryDate: DP.asString(json['deliveryDate']),
      type: DP.asString(json['type']),
      deliveryTime: DP.asString(json['deliveryTime']),
      profileComment: DP.asString(json['profileComment']),
      status: DP.asString(json['status']),
      trackingNumber: DP.asString(json['trackingNumber']),
      cardId: DP.asString(json['cardId']),
      lastFourDigits: DP.asString(json['lastFourDigits']),
      kycTrials: DP.asInt(json['kycTrials']),
      extras: DP.asMap(json['extras']),
      discount: DiscountModel.fromJson(DP.asMap(json['discount'])),
    );
  }

  final String id;
  final String createdAt;
  final OrderProductModel product;
  final OrderLocationModel deliveryLocation;
  final OrderLocationModel pickupLocation;
  final OrderLocationModel homeLocation;
  final String deliveryDate;
  final String type;
  final String deliveryTime;
  final String profileComment;
  final String status;
  final String trackingNumber;
  final String cardId;
  final String lastFourDigits;
  final int kycTrials;
  final Map<String, dynamic> extras;
  final DiscountModel discount;

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      'product': product.toJson(),
      'deliveryLocation': deliveryLocation.toJson(),
      'pickupLocation': pickupLocation.toJson(),
      'homeLocation': homeLocation.toJson(),
      'deliveryDate': deliveryDate,
      'type': type,
      'deliveryTime': deliveryTime,
      'profileComment': profileComment,
      'status': status,
      'trackingNumber': trackingNumber,
      'cardId': cardId,
      'lastFourDigits': lastFourDigits,
      'kycTrials': kycTrials,
      'extras': extras,
      'discount': discount.toJson(),
    };
  }
}

extension OrderModelExtension on OrderModel {}
