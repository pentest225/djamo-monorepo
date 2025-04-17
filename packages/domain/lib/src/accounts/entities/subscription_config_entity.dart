import 'package:domain/src/_core/_core.dart';

class SubscriptionConfigEntity extends BaseEntity {
  const SubscriptionConfigEntity({
    this.cardCost = 0.0,
    this.recurringFee = 0.0,
    this.topUpFee = 0.0,
    this.freeCashinLimit = 0.0,
    this.processorCashinRate = 0,
    this.freeCashinPeriod = 0,
    this.referralReward = 0.0,
    this.callToActionButtonLabel = emptyString,
    this.monthlyFeeText = emptyString,
    this.initialTopUp = 0.0,
    this.balanceLimit = 0.0,
    this.monthlyCashinLimit = 0.0,
    this.dailyCashinLimit = 0.0,
    this.cardToCardTransferLimit = 0.0,
    this.dailyTransferCardToCardLimit = 0.0,
    this.withdrawalLimit = 0,
  });

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

  static const empty = SubscriptionConfigEntity();
  bool get isEmpty => this == empty;

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

extension SubscriptionConfigEntityExtension on SubscriptionConfigEntity {}
