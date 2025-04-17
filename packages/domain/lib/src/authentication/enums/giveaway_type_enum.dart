enum GiveawayTypeEnum {
  undefined(''),
  oneMonthPremium('one_month_premium_free'),
  freeMobileMoneyDeposit('free_mobile_money_deposit'),
  freeMobileMoneyTransfer('free_mobile_money_transfer'),
  cashbackOnNextPayment('cashback_on_next_payment'),
  ;

  const GiveawayTypeEnum(this.value);

  factory GiveawayTypeEnum.fromString(String value) => GiveawayTypeEnum.values.firstWhere(
        (e) => e.value == value.toLowerCase(),
        orElse: () => GiveawayTypeEnum.undefined,
      );

  final String value;
}
