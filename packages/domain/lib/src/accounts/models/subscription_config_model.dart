import 'package:domain/src/_core/_core.dart';

class SubscriptionConfigModel extends BaseModel {
  const SubscriptionConfigModel({
    required this.cardCost,
    required this.recurringFee,
    required this.topUpFee,
    required this.freeCashinLimit,
    required this.processorCashinRate,
    required this.freeCashinPeriod,
    required this.referralReward,
    required this.callToActionButtonLabel,
    required this.monthlyFeeText,
    required this.initialTopUp,
    required this.balanceLimit,
    required this.monthlyCashinLimit,
    required this.dailyCashinLimit,
    required this.cardToCardTransferLimit,
    required this.dailyTransferCardToCardLimit,
    required this.withdrawalLimit,
  });

  factory SubscriptionConfigModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionConfigModel(
      cardCost: DP.asDouble(json['cardCost']),
      recurringFee: DP.asDouble(json['recurringFee']),
      topUpFee: DP.asDouble(json['topUpFee']),
      freeCashinLimit: DP.asDouble(json['freeCashinLimit']),
      processorCashinRate: DP.asInt(json['processorCashinRate']),
      freeCashinPeriod: DP.asInt(json['freeCashinPeriod']),
      referralReward: DP.asDouble(json['referralReward']),
      callToActionButtonLabel: DP.asString(json['callToActionButtonLabel']),
      monthlyFeeText: DP.asString(json['monthlyFeeText']),
      initialTopUp: DP.asDouble(json['initialTopUp']),
      balanceLimit: DP.asDouble(json['balanceLimit']),
      monthlyCashinLimit: DP.asDouble(json['monthlyCashinLimit']),
      dailyCashinLimit: DP.asDouble(json['dailyCashinLimit']),
      cardToCardTransferLimit: DP.asDouble(json['cardToCardTransferLimit']),
      dailyTransferCardToCardLimit: DP.asDouble(json['dailyTransferCardToCardLimit']),
      withdrawalLimit: DP.asInt(json['withdrawalLimit']),
    );
  }

  final double cardCost;
  final double recurringFee;
  final double topUpFee;
  final double freeCashinLimit;
  final int processorCashinRate;
  final int freeCashinPeriod;
  final double referralReward;
  final String callToActionButtonLabel;
  final String monthlyFeeText;
  final double initialTopUp;
  final double balanceLimit;
  final double monthlyCashinLimit;
  final double dailyCashinLimit;
  final double cardToCardTransferLimit;
  final double dailyTransferCardToCardLimit;
  final int withdrawalLimit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'cardCost': cardCost,
      'recurringFee': recurringFee,
      'topUpFee': topUpFee,
      'freeCashinLimit': freeCashinLimit,
      'processorCashinRate': processorCashinRate,
      'freeCashinPeriod': freeCashinPeriod,
      'referralReward': referralReward,
      'callToActionButtonLabel': callToActionButtonLabel,
      'monthlyFeeText': monthlyFeeText,
      'initialTopUp': initialTopUp,
      'balanceLimit': balanceLimit,
      'monthlyCashinLimit': monthlyCashinLimit,
      'dailyCashinLimit': dailyCashinLimit,
      'cardToCardTransferLimit': cardToCardTransferLimit,
      'dailyTransferCardToCardLimit': dailyTransferCardToCardLimit,
      'withdrawalLimit': withdrawalLimit,
    };
  }

  @override
  List<Object?> get props => [
        cardCost,
        recurringFee,
        topUpFee,
        freeCashinLimit,
        processorCashinRate,
        freeCashinPeriod,
        referralReward,
        callToActionButtonLabel,
        monthlyFeeText,
        initialTopUp,
        balanceLimit,
        monthlyCashinLimit,
        dailyCashinLimit,
        cardToCardTransferLimit,
        dailyTransferCardToCardLimit,
        withdrawalLimit,
      ];
}

extension SubscriptionConfigModelExtension on SubscriptionConfigModel {}
