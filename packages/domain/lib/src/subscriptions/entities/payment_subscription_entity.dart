import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/subscriptions/enums/enums.dart';

typedef PaymentSubscriptionEntities = List<PaymentSubscriptionEntity>;

// TODO(Quentin): Entity should reflect the real entities
/// https://github.com/djamoapp/api-v2/blob/cfc2165c46e5f379e761fbda38ecd28192043301/src/modules/watchtower/core/entities/watchtower-subscription.entity.ts
class PaymentSubscriptionEntity extends BaseEntity {
  const PaymentSubscriptionEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.amount = 0.0,
    this.transactionReference = emptyString,
    this.clientId = emptyString,
    this.accountId = emptyString,
    this.merchantName = emptyString,
    this.merchantIconUrl = emptyString,
    this.period = emptyString,
    this.subscribedAt = emptyString,
    this.unsubscribeDocUrl = emptyString,
    this.source = emptyString,
    this.nextDueAt,
    this.updatedAt,
    this.deletedAt,
    this.lastNotificationSentAt,
    this.isActive = false,
    this.sevenDaysNotificationSentAt,
    this.threeDaysNotificationSentAt,
    this.oneDayNotificationSentAt,
    this.stopType,
    this.lastTransactionDate,
    this.cardAcceptorId,
    this.stopId,
    this.stopStartAt,
    this.provider,
  });

  final String id;
  final String createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final String? lastNotificationSentAt;
  final double amount;
  final String transactionReference;
  final String clientId;
  final String accountId;
  final String merchantName;
  final String merchantIconUrl;
  final String period;
  final String subscribedAt;
  final String? nextDueAt;
  final String unsubscribeDocUrl;
  final String source;
  final bool isActive;
  final String? sevenDaysNotificationSentAt;
  final String? threeDaysNotificationSentAt;
  final String? oneDayNotificationSentAt;
  final String? stopType;
  final String? lastTransactionDate;
  final String? cardAcceptorId;
  final String? stopId;
  final String? stopStartAt;
  final String? provider;

  static const empty = PaymentSubscriptionEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        amount,
        transactionReference,
        clientId,
        accountId,
        merchantName,
        merchantIconUrl,
        period,
        subscribedAt,
        nextDueAt,
        unsubscribeDocUrl,
        source,
        deletedAt,
        lastNotificationSentAt,
        sevenDaysNotificationSentAt,
        threeDaysNotificationSentAt,
        oneDayNotificationSentAt,
        stopType,
        lastTransactionDate,
        isActive,
        cardAcceptorId,
        stopId,
        stopStartAt,
        provider,
      ];
}

extension PaymentSubscriptionEntityExtension on PaymentSubscriptionEntity {
  DateTime? get getNextDueDate => DateTime.tryParse(nextDueAt ?? emptyString);

  DateTime? get getSubscribedDate => DateTime.tryParse(subscribedAt);

  bool get isNextDuePassed {
    return getNextDueDate?.isBefore(DateTime.now()) ?? false;
  }

  PaymentSubscriptionSourceEnum get getSource {
    return PaymentSubscriptionSourceEnum.fromIdentifier(source);
  }

  PaymentSubscriptionStopEnum? get getStopType {
    return stopType == null ? null : PaymentSubscriptionStopEnum.fromIdentifier(stopType!);
  }

  PaymentSubscriptionProviderEnum? get getProvider {
    return provider == null ? null : PaymentSubscriptionProviderEnum.fromIdentifier(provider!);
  }

  bool get isStopped => stopId != null && stopId!.isNotEmpty;

  bool get isStoppedByUser => getStopType == PaymentSubscriptionStopEnum.manual;

  DateTime? get getStopStartAt => DateTime.tryParse(stopStartAt ?? emptyString);

  DateTime? get getLastTransactionDate => DateTime.tryParse(lastTransactionDate ?? emptyString);

  bool get isAutomaticallyDetected => getSource.isAutomatic;

  bool get isManuallyDetected => getSource.isManual;

  bool get shouldBeReminded {
    if (getNextDueDate == null) {
      return false;
    } else {
      return getNextDueDate!.difference(DateTime.now()).inDays <= 7;
    }
  }
}

extension PaymentSubscriptionEntitiesExtension on PaymentSubscriptionEntities {
  PaymentSubscriptionEntity get subscriptionBlocked => firstWhere((e) => !e.isStoppedByUser, orElse: () => PaymentSubscriptionEntity.empty);

  bool get hasBlockedSubscription => any((e) => e.isStopped);
}
