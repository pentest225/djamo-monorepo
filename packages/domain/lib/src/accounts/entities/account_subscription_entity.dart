import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/entities/subscription_config_entity.dart';
import 'package:domain/src/accounts/entities/subscription_counter_entity.dart';
import 'package:domain/src/products/enums/product_type_enum.dart';

class AccountSubscriptionEntity extends BaseEntity {
  const AccountSubscriptionEntity({
    this.id = emptyString,
    this.activationDate = emptyString,
    this.expirationDate = emptyString,
    this.productName = emptyString,
    this.productId = emptyString,
    this.productIdentifier = emptyString,
    this.configuration = SubscriptionConfigEntity.empty,
    this.counters = const [],
    this.nextSubscriptionProductId = emptyString,
    this.hasPremiumSubscription = false,
    this.isGiveaway = false,
    this.giveawayReason = emptyString,
  });

  final String id;
  final String activationDate;
  final String expirationDate;
  final String productName;
  final String productId;
  final String productIdentifier;
  final SubscriptionConfigEntity configuration;
  final List<SubscriptionCounterEntity> counters;
  final String nextSubscriptionProductId;
  final bool hasPremiumSubscription;
  final bool isGiveaway;
  final String giveawayReason;

  static const empty = AccountSubscriptionEntity();
  bool get isEmpty => this == empty;

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

extension AccountSubscriptionEntityExtension on AccountSubscriptionEntity {
  ProductTypeEnum get _productType {
    return ProductTypeEnum.fromString(productIdentifier);
  }

  bool get isPremium {
    return _productType == ProductTypeEnum.premium;
  }

  bool get isFree {
    return _productType == ProductTypeEnum.free;
  }

  DateTime? get getExpirationDate {
    return DateTime.tryParse(expirationDate);
  }

  bool get containsFreePremiumSubscription {
    return isGiveaway && nextSubscriptionProductId.isEmpty;
  }
}
