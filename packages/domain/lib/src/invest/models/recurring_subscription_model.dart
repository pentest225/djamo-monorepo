import 'package:domain/src/_core/_core.dart';

class RecurringSubscriptionModel extends BaseModel {
  const RecurringSubscriptionModel({
    required this.id,
    required this.recurringAmount,
    required this.totalAmountInvested,
    required this.status,
    required this.frequency,
  });

  factory RecurringSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return RecurringSubscriptionModel(
      id: DP.asString(json['id']),
      recurringAmount: DP.asDouble(json['recurringAmount']),
      totalAmountInvested: DP.asDouble(json['totalAmountInvested']),
      status: DP.asString(json['status']),
      frequency: DP.asString(json['frequency']),
    );
  }

  final String id;
  final double recurringAmount;
  final double totalAmountInvested;
  final String status;
  final String frequency;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'recurringAmount': recurringAmount,
      'totalAmountInvested': totalAmountInvested,
      'status': status,
      'frequency': frequency,
    };
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

extension RecurringSubscriptionModelDomainExtension on RecurringSubscriptionModel {}
