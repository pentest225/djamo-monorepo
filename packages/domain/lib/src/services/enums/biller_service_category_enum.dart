enum BillerServiceCategoryEnum {
  none._('none'),
  postpaid._('postpaid'),
  prepaid._('prepaid'),
  subscriptionRenewal._('subscription_renewal'),
  ;

  const BillerServiceCategoryEnum._(this.category);

  factory BillerServiceCategoryEnum.fromString(String category) {
    final lowerCasedCategory = category.toLowerCase();
    return BillerServiceCategoryEnum.values.firstWhere(
      (e) => e.category == lowerCasedCategory,
      orElse: () => BillerServiceCategoryEnum.none,
    );
  }

  final String category;
}

extension BillerServiceTypeEnumExtension on BillerServiceCategoryEnum {
  bool get isNone => this == BillerServiceCategoryEnum.none;
  bool get isPostpaid => this == BillerServiceCategoryEnum.postpaid;
  bool get isPrepaid => this == BillerServiceCategoryEnum.prepaid;
  bool get isSubscriptionRenewal => this == BillerServiceCategoryEnum.subscriptionRenewal;
}
