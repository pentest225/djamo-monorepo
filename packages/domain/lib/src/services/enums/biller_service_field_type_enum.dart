enum BillerServiceFieldTypeEnum {
  unknown._('unknown'),
  accountReference._('card_no'),
  amount._('amount'),
  selectable._('selectable'),
  dropdown._('dropdown'),
  ;

  const BillerServiceFieldTypeEnum._(this.identifier);

  factory BillerServiceFieldTypeEnum.fromIdentifier(String identifier) {
    return BillerServiceFieldTypeEnum.values.firstWhere(
      (e) {
        return e.identifier == identifier;
      },
      orElse: () => BillerServiceFieldTypeEnum.unknown,
    );
  }

  final String identifier;
}

extension BillerServiceFieldTypeEnumExtension on BillerServiceFieldTypeEnum {
  bool get isAccountReference => this == BillerServiceFieldTypeEnum.accountReference;
  bool get isAmount => this == BillerServiceFieldTypeEnum.amount;
  bool get isSelectable => this == BillerServiceFieldTypeEnum.selectable;
  bool get isDropdown => this == BillerServiceFieldTypeEnum.dropdown;

  bool get isASelectField => isSelectable || isDropdown;
}
