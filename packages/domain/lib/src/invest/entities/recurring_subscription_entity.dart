import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/enums/recurrent_subscription_status_enum.dart';
import 'package:meta/meta.dart';

class RecurringSubscriptionEntity extends BaseEntity {
  const RecurringSubscriptionEntity({
    this.id = emptyString,
    this.recurringAmount = 0.0,
    this.totalAmountInvested = 0.0,
    this.status = emptyString,
    this.frequency = emptyString,
  });

  final String id;
  final double recurringAmount;
  final double totalAmountInvested;
  @internal
  final String status;
  final String frequency;

  static const empty = RecurringSubscriptionEntity();
  bool get isEmpty => this == empty;

  RecurringSubscriptionEntity copyWith({
    String? id,
    double? recurringAmount,
    double? totalAmountInvested,
    String? status,
    String? frequency,
  }) {
    return RecurringSubscriptionEntity(
      id: id ?? this.id,
      recurringAmount: recurringAmount ?? this.recurringAmount,
      totalAmountInvested: totalAmountInvested ?? this.totalAmountInvested,
      status: status ?? this.status,
      frequency: frequency ?? this.frequency,
    );
  }

  @override
  List<Object?> get props => [
        id,
        recurringAmount,
        totalAmountInvested,
        status,
        frequency,
      ];
}

extension RecurringSubscriptionEntityDomainExtension on RecurringSubscriptionEntity {
  RecurrentSubscriptionStatusEnum get getStatus {
    return RecurrentSubscriptionStatusEnum.fromIdentifier(status);
  }
}
