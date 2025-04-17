typedef ProfileTooltipTypeEnums = List<ProfileTooltipTypeEnum>;

enum ProfileTooltipTypeEnum {
  none,
  //App
  appUpdate,
  //KYC
  kycRejected,
  verifyYourIdentity,
  // Pending credit
  pendingCredit,
  // Card destroyed
  physicalCardDestroyed,
  virtualCardDestroyed,
  virtualCardRecreated,
  //Card Incentive
  orderPhysicalCard,
  increaseVCCeiling,
  cardExpiration,
  //Order
  helpFromAgentForKYC,
  linkYourCard,
  pendingOrder,
  failedDeliveryOrder,
  collectYourCardNow,
  readyForPickupOrder,
  preferDeliveryOrder,
  pendingDeliveryOrder,
  //Payment Subscription
  paymentSubscriptionReminder,
  vsmSubscriptionPaymentBlocked,
  //Loan
  loanDueSoon,
  loanGranted,
  loanPastDue,
  //Giveaway
  freeDeposit,
  freeTransfer,
  freeCashback,
  freePremiumSubscription,
  ;
}

extension ProfileTooltipTypeEnumDomainExtension on ProfileTooltipTypeEnum {
  bool get isAppRelated => [
        ProfileTooltipTypeEnum.appUpdate,
      ].contains(this);

  bool get isPendingCreditRelated => [
        ProfileTooltipTypeEnum.pendingCredit,
      ].contains(this);

  bool get isKYCRelated => [
        ProfileTooltipTypeEnum.kycRejected,
        ProfileTooltipTypeEnum.verifyYourIdentity,
      ].contains(this);

  bool get isCardIncentiveRelated => [
        ProfileTooltipTypeEnum.orderPhysicalCard,
        ProfileTooltipTypeEnum.increaseVCCeiling,
      ].contains(this);

  bool get isOrderRelated => [
        ProfileTooltipTypeEnum.helpFromAgentForKYC,
        ProfileTooltipTypeEnum.linkYourCard,
        ProfileTooltipTypeEnum.pendingOrder,
        ProfileTooltipTypeEnum.failedDeliveryOrder,
        ProfileTooltipTypeEnum.collectYourCardNow,
        ProfileTooltipTypeEnum.readyForPickupOrder,
        ProfileTooltipTypeEnum.preferDeliveryOrder,
        ProfileTooltipTypeEnum.pendingDeliveryOrder,
      ].contains(this);

  bool get isPaymentSubscriptionRelated => [
        ProfileTooltipTypeEnum.paymentSubscriptionReminder,
        ProfileTooltipTypeEnum.vsmSubscriptionPaymentBlocked,
      ].contains(this);

  bool get isAccountRelated => [
        ProfileTooltipTypeEnum.physicalCardDestroyed,
        ProfileTooltipTypeEnum.virtualCardDestroyed,
        ProfileTooltipTypeEnum.virtualCardRecreated,
        ProfileTooltipTypeEnum.cardExpiration,
      ].contains(this);

  bool get isLoanRelated => [
        ProfileTooltipTypeEnum.loanDueSoon,
        ProfileTooltipTypeEnum.loanGranted,
        ProfileTooltipTypeEnum.loanPastDue,
      ].contains(this);

  bool get isGiveawayRelated {
    return [
      ProfileTooltipTypeEnum.freeDeposit,
      ProfileTooltipTypeEnum.freeTransfer,
      ProfileTooltipTypeEnum.freeCashback,
      ProfileTooltipTypeEnum.freePremiumSubscription,
    ].contains(this);
  }
}
