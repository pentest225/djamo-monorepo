import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/models/subscription_config_model.dart';
import 'package:domain/src/accounts/models/subscription_counter_model.dart';

class AccountSubscriptionModel extends BaseModel {
  const AccountSubscriptionModel({
    required this.id,
    required this.activationDate,
    required this.expirationDate,
    required this.productName,
    required this.productId,
    required this.productIdentifier,
    required this.configuration,
    required this.counters,
    required this.nextSubscriptionProductId,
    required this.hasPremiumSubscription,
    required this.isGiveaway,
    required this.giveawayReason,
  });

  factory AccountSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return AccountSubscriptionModel(
      id: DP.asString(json['id']),
      activationDate: DP.asString(json['activationDate']),
      expirationDate: DP.asString(json['expirationDate']),
      productName: DP.asString(json['productName']),
      productId: DP.asString(json['productId']),
      productIdentifier: DP.asString(json['productIdentifier']),
      configuration: SubscriptionConfigModel.fromJson(DP.asMap(json['configuration'])),
      counters: DP.asListOf<JsonMap>(json['counters']).map(SubscriptionCounterModel.fromJson).toList(),
      nextSubscriptionProductId: DP.asString(json['nextSubscriptionProductId']),
      hasPremiumSubscription: DP.asBool(json['hasPremiumSubscription']),
      isGiveaway: DP.asBool(json['isGiveaway']),
      giveawayReason: DP.asString(json['giveawayReason']),
    );
  }

  final String id;
  final String activationDate;
  final String expirationDate;
  final String productName;
  final String productId;
  final String productIdentifier;
  final SubscriptionConfigModel configuration;
  final List<SubscriptionCounterModel> counters;
  final String nextSubscriptionProductId;
  final bool hasPremiumSubscription;
  final bool isGiveaway;
  final String giveawayReason;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'activationDate': activationDate,
      'expirationDate': expirationDate,
      'productName': productName,
      'productId': productId,
      'productIdentifier': productIdentifier,
      'configuration': configuration.toJson(),
      'counters': counters,
      'nextSubscriptionProductId': nextSubscriptionProductId,
      'hasPremiumSubscription': hasPremiumSubscription,
      'isGiveaway': isGiveaway,
      'giveawayReason': giveawayReason,
    };
  }

  @override
  List<Object?> get props => [
        id,
        activationDate,
        expirationDate,
        productName,
        productId,
        productIdentifier,
        configuration,
        counters,
        nextSubscriptionProductId,
        hasPremiumSubscription,
        isGiveaway,
        giveawayReason,
      ];
}

extension AccountSubscriptionModelExtension on AccountSubscriptionModel {}
