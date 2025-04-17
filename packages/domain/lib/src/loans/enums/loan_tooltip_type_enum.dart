import 'package:collection/collection.dart';

enum LoanTooltipTypeEnum {
  unknown._(''),
  green._('green'),
  yellow._('yellow'),
  red._('red');

  factory LoanTooltipTypeEnum.fromIdentifier(String identifier) {
    return LoanTooltipTypeEnum.values.firstWhereOrNull((type) => type.identifier == identifier) ?? LoanTooltipTypeEnum.unknown;
  }

  const LoanTooltipTypeEnum._(this.identifier);

  final String identifier;
}

extension LoanTooltipTypeEnumDomainExtension on LoanTooltipTypeEnum {
  bool get isUnknown => this == LoanTooltipTypeEnum.unknown;

  bool get isGreen => this == LoanTooltipTypeEnum.green;

  bool get isYellow => this == LoanTooltipTypeEnum.yellow;

  bool get isRed => this == LoanTooltipTypeEnum.red;
}
