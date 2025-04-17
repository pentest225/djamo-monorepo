import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/payment_link/models/company_model.dart';
import 'package:domain/src/payment_link/models/fees_model.dart';

class ChargeModel extends BaseModel {
  const ChargeModel({
    required this.id,
    required this.orderId,
    required this.description,
    required this.currency,
    required this.amount,
    required this.due,
    required this.fees,
    required this.status,
    required this.droppedReason,
    required this.paid,
    required this.refunded,
    required this.attempts,
    required this.completedAt,
    required this.createdAt,
    required this.company,
    required this.paymentUrl,
  });

  factory ChargeModel.fromJson(Map<String, dynamic> json) {
    return ChargeModel(
      id: DP.asString(json['id']),
      orderId: DP.asString(json['orderId']),
      description: DP.asString(json['description']),
      currency: DP.asString(json['currency']),
      amount: DP.asNum(json['amount']),
      due: DP.asNum(json['due']),
      fees: FeesModel.fromJson(DP.asMap(json['fees'])),
      status: DP.asString(json['status']),
      droppedReason: DP.asString(json['droppedReason']),
      paid: DP.asNum(json['paid']),
      refunded: DP.asNum(json['refunded']),
      attempts: DP.asNum(json['attempts']),
      completedAt: DP.asString(json['completedAt']),
      createdAt: DP.asString(json['createdAt']),
      company: CompanyModel.fromJson(DP.asMap(json['company'])),
      paymentUrl: DP.asString(json['paymentUrl']),
    );
  }

  final String id;
  final String orderId;
  final String description;
  final String currency;
  final num amount;
  final num due;
  final FeesModel fees;
  final String status;
  final String droppedReason;
  final num paid;
  final num refunded;
  final num attempts;
  final String completedAt;
  final String createdAt;
  final CompanyModel company;
  final String paymentUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'orderId': orderId,
      'description': description,
      'currency': currency,
      'amount': amount,
      'due': due,
      'fees': fees.toJson(),
      'status': status,
      'droppedReason': droppedReason,
      'paid': paid,
      'refunded': refunded,
      'attempts': attempts,
      'completedAt': completedAt,
      'createdAt': createdAt,
      'company': company.toJson(),
      'paymentUrl': paymentUrl,
    };
  }

  @override
  List<Object?> get props => [
        id,
        orderId,
        description,
        currency,
        amount,
        due,
        fees,
        status,
        droppedReason,
        paid,
        refunded,
        attempts,
        completedAt,
        createdAt,
        company,
        paymentUrl,
      ];
}

extension ChargeModelDomainExtension on ChargeModel {}
