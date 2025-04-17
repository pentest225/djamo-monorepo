import 'package:domain/src/_core/_core.dart';

typedef PaymentSubscriptionModels = List<PaymentSubscriptionModel>;

class PaymentSubscriptionModel extends BaseModel {
  const PaymentSubscriptionModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.amount,
    required this.transactionReference,
    required this.clientId,
    required this.accountId,
    required this.merchantName,
    required this.merchantIconUrl,
    required this.period,
    required this.subscribedAt,
    required this.unsubscribeDocUrl,
    required this.source,
    required this.isActive,
    this.nextDueAt,
    this.deletedAt,
    this.lastNotificationSentAt,
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

  factory PaymentSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return PaymentSubscriptionModel(
      id: DP.asString(json['id']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: json.containsKey('updatedAt') ? DP.asString(json['updatedAt']) : null,
      amount: DP.asDouble(json['amount']),
      transactionReference: DP.asString(json['transactionReference']),
      clientId: DP.asString(json['clientId']),
      accountId: DP.asString(json['accountId']),
      merchantName: DP.asString(json['merchantName']),
      merchantIconUrl: DP.asString(json['merchantIconUrl']),
      period: DP.asString(json['period']),
      subscribedAt: DP.asString(json['subscribedAt']),
      nextDueAt: json.containsKey('nextDueAt') ? DP.asString(json['nextDueAt']) : null,
      unsubscribeDocUrl: DP.asString(json['unsubscribeDocUrl']),
      source: DP.asString(json['source']),
      isActive: DP.asBool(json['isActive']),
      deletedAt: json.containsKey('deletedAt') ? DP.asString(json['deletedAt']) : null,
      lastNotificationSentAt: json.containsKey('lastNotificationSentAt') ? DP.asString(json['lastNotificationSentAt']) : null,
      sevenDaysNotificationSentAt: json.containsKey('sevenDaysNotificationSentAt') ? DP.asString(json['sevenDaysNotificationSentAt']) : null,
      threeDaysNotificationSentAt: json.containsKey('threeDaysNotificationSentAt') ? DP.asString(json['threeDaysNotificationSentAt']) : null,
      oneDayNotificationSentAt: json.containsKey('oneDayNotificationSentAt') ? DP.asString(json['oneDayNotificationSentAt']) : null,
      stopType: json.containsKey('stopType') ? DP.asString(json['stopType']) : null,
      lastTransactionDate: json.containsKey('lastTransactionDate') ? DP.asString(json['lastTransactionDate']) : null,
      cardAcceptorId: json.containsKey('cardAcceptorId') ? DP.asString(json['cardAcceptorId']) : null,
      stopId: json.containsKey('stopId') ? DP.asString(json['stopId']) : null,
      stopStartAt: json.containsKey('stopStartAt') ? DP.asString(json['stopStartAt']) : null,
      provider: json.containsKey('provider') ? DP.asString(json['provider']) : null,
    );
  }

  final String id;
  final String createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final String? lastNotificationSentAt;
  final String? sevenDaysNotificationSentAt;
  final String? threeDaysNotificationSentAt;
  final String? oneDayNotificationSentAt;
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
  final String? stopType;
  final String? lastTransactionDate;
  final String? cardAcceptorId;
  final String? stopId;
  final String? stopStartAt;
  final String? provider;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
      'amount': amount,
      'transactionReference': transactionReference,
      'clientId': clientId,
      'accountId': accountId,
      'merchantName': merchantName,
      'merchantIconUrl': merchantIconUrl,
      'period': period,
      'subscribedAt': subscribedAt,
      if (nextDueAt != null) 'nextDueAt': nextDueAt,
      'unsubscribeDocUrl': unsubscribeDocUrl,
      'source': source,
      'isActive': isActive,
      if (deletedAt != null) 'deletedAt': deletedAt,
      if (lastNotificationSentAt != null) 'lastNotificationSentAt': lastNotificationSentAt,
      if (sevenDaysNotificationSentAt != null) 'sevenDaysNotificationSentAt': sevenDaysNotificationSentAt,
      if (threeDaysNotificationSentAt != null) 'threeDaysNotificationSentAt': threeDaysNotificationSentAt,
      if (oneDayNotificationSentAt != null) 'oneDayNotificationSentAt': oneDayNotificationSentAt,
      if (stopType != null) 'stopType': stopType,
      if (lastTransactionDate != null) 'lastTransactionDate': lastTransactionDate,
      if (cardAcceptorId != null) 'cardAcceptorId': cardAcceptorId,
      if (stopId != null) 'stopId': stopId,
      if (stopStartAt != null) 'stopStartAt': stopStartAt,
      if (provider != null) 'provider': provider,
    };
  }

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

extension PaymentSubscriptionModelExtension on PaymentSubscriptionModel {}
