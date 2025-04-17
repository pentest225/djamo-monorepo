import 'package:domain/src/_core/_core.dart';

class PaymentLinkTransactionModel extends BaseModel {
  const PaymentLinkTransactionModel({
    required this.id,
    required this.status,
    required this.amount,
    required this.feesAmount,
    required this.chargedAmount,
    required this.currencyCode,
    required this.sequence,
    required this.error,
    required this.completedAt,
    required this.isActive,
    required this.token,
    required this.recipientMsisdn,
    required this.paymentUrl,
  });

  factory PaymentLinkTransactionModel.fromJson(Map<String, dynamic> json) {
    return PaymentLinkTransactionModel(
      id: DP.asString(json['id']),
      status: DP.asString(json['status']),
      amount: DP.asNum(json['amount']),
      feesAmount: DP.asNum(json['feesAmount']),
      chargedAmount: DP.asNum(json['chargedAmount']),
      currencyCode: DP.asString(json['currencyCode']),
      sequence: DP.asNum(json['sequence']),
      error: DP.asString(json['error']),
      completedAt: DP.asString(json['completedAt']),
      isActive: DP.asBool(json['isActive']),
      token: DP.asString(json['token']),
      recipientMsisdn: DP.asString(json['recipientMsisdn']),
      paymentUrl: DP.asString(json['paymentUrl']),
    );
  }

  final String id;
  final String status;
  final num amount;
  final num feesAmount;
  final num chargedAmount;
  final String currencyCode;
  final num sequence;
  final String error;
  final String completedAt;
  final bool isActive;
  final String token;
  final String recipientMsisdn;
  final String paymentUrl;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'amount': amount,
      'feesAmount': feesAmount,
      'chargedAmount': chargedAmount,
      'currencyCode': currencyCode,
      'sequence': sequence,
      'error': error,
      'completedAt': completedAt,
      'isActive': isActive,
      'token': token,
      'recipientMsisdn': recipientMsisdn,
      'paymentUrl': paymentUrl,
    };
  }

  @override
  List<Object?> get props => [
        id,
        status,
        amount,
        feesAmount,
        chargedAmount,
        currencyCode,
        sequence,
        error,
        completedAt,
        isActive,
        token,
        recipientMsisdn,
        paymentUrl,
      ];
}

extension PaymentLinkTransactionModelDomainExtension on PaymentLinkTransactionModel {}
