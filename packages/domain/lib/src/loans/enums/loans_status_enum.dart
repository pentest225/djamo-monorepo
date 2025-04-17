import 'package:collection/collection.dart';

enum LoanStatusEnum {
  unknown._(''),
  pendingApproval._('PENDING_APPROVAL'),
  approved._('APPROVED'),
  disbursed._('DISBURSED'),
  paid._('PAID'),
  pastDue._('PAST_DUE'),
  rejected._('REJECTED'),
  due._('DUE');

  factory LoanStatusEnum.fromIdentifier(String identifier) {
    return LoanStatusEnum.values.firstWhereOrNull((type) => type.identifier == identifier) ?? LoanStatusEnum.unknown;
  }
  const LoanStatusEnum._(this.identifier);

  final String identifier;
}

extension LoanStatusEnumDomainExtension on LoanStatusEnum {
  bool get isUnknown => this == LoanStatusEnum.unknown;
  bool get isPendingApproval => this == LoanStatusEnum.pendingApproval;
  bool get isApproved => this == LoanStatusEnum.approved;
  bool get isDisbursed => this == LoanStatusEnum.disbursed;
  bool get isPaid => this == LoanStatusEnum.paid;
  bool get isPastDue => this == LoanStatusEnum.pastDue;
  bool get isRejected => this == LoanStatusEnum.rejected;
  bool get isDue => this == LoanStatusEnum.due;
}
