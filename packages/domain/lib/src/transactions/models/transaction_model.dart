import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/transactions/models/transaction_tag_model.dart';

typedef LedgerTransactionModels = List<TransactionModel>;

class TransactionModel extends BaseModel {
  const TransactionModel({
    required this.id,
    required this.accountId,
    required this.createdAt,
    required this.updatedAt,
    required this.reference,
    required this.chargedAmount,
    required this.amount,
    required this.fees,
    required this.originalAmount,
    required this.fxRate,
    required this.balanceAfter,
    required this.label,
    required this.date,
    required this.iconUrl,
    required this.type,
    required this.status,
    required this.hasGif,
    required this.transactionServiceName,
    required this.tag,
    required this.note,
    required this.illustrationUrl,
    required this.description,
    required this.parentTransactionId,
    required this.transactionVerificationStatus,
    required this.recipientE164,
    required this.recipientLabel,
    required this.senderE164,
    required this.senderLabel,
    required this.categoryId,
    required this.operator,
    required this.transferStatus,
    required this.depositStatus,
    required this.operatorValidationUrl,
    required this.operatorFees,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: DP.asString(json['id']),
      accountId: DP.asString(json['accountId']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      reference: DP.asString(json['reference']),
      chargedAmount: DP.asDouble(json['chargedAmount']),
      amount: DP.asDouble(json['amount']),
      fees: DP.asDouble(json['fees']),
      originalAmount: DP.asString(json['originalAmount']),
      fxRate: DP.asString(json['fxRate']),
      balanceAfter: DP.asDouble(json['balanceAfter']),
      label: DP.asString(json['label']),
      date: DP.asString(json['date']),
      iconUrl: DP.asString(json['iconUrl']),
      type: DP.asString(json['type']),
      status: DP.asString(json['status']),
      hasGif: DP.asBool(json['hasGif']),
      transactionServiceName: DP.asString(json['transactionServiceName']),
      tag: TransactionTagModel.fromJson(DP.asMap(json['tag'])),
      note: DP.asString(json['note']),
      illustrationUrl: DP.asString(json['illustrationUrl']),
      description: DP.asString(json['description']),
      parentTransactionId: DP.asString(json['parentTransactionId']),
      transactionVerificationStatus: DP.asString(json['transactionVerificationStatus']),
      recipientE164: DP.asString(json['recipientE164']),
      recipientLabel: DP.asString(json['recipientLabel']),
      senderE164: DP.asString(json['senderE164']),
      senderLabel: DP.asString(json['senderLabel']),
      categoryId: DP.asString(json['categoryId']),
      transferStatus: DP.asString(json['transferStatus']),
      depositStatus: DP.asString(json['depositStatus']),
      operatorValidationUrl: DP.asMap(json['operatorValidationUrl']),
      operator: json['operator'] == null ? '' : DP.asString(json['operator']),
      operatorFees: DP.asDouble(json['operatorFees']),
    );
  }

  final String id;
  final String accountId;
  final String createdAt;
  final String updatedAt;
  final String reference;
  final double chargedAmount;
  final double fees;
  final double amount;
  final String fxRate;
  final String originalAmount;
  final double balanceAfter;
  final String label;
  final String date;
  final String iconUrl;
  final String type;
  final String status;
  final bool hasGif;
  final String transactionServiceName;
  final TransactionTagModel tag;
  final String note;
  final String illustrationUrl;
  final String description;
  final String parentTransactionId;
  final String transactionVerificationStatus;
  final String recipientE164;
  final String recipientLabel;
  final String senderE164;
  final String senderLabel;
  final String categoryId;
  final String operator;
  final String transferStatus;
  final String depositStatus;
  final JsonMap operatorValidationUrl;
  final double operatorFees;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'accountId': accountId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'reference': reference,
      'amount': amount,
      'fees': fees,
      'chargedAmount': chargedAmount,
      'fxRate': fxRate,
      'originalAmount': originalAmount,
      'balanceAfter': balanceAfter,
      'label': label,
      'date': date,
      'iconUrl': iconUrl,
      'type': type,
      'status': status,
      'hasGif': hasGif,
      'transactionServiceName': transactionServiceName,
      'tag': tag,
      'note': note,
      'illustrationUrl': illustrationUrl,
      'description': description,
      'parentTransactionId': parentTransactionId,
      'transactionVerificationStatus': transactionVerificationStatus,
      'recipientE164': recipientE164,
      'recipientLabel': recipientLabel,
      'senderE164': senderE164,
      'senderLabel': senderLabel,
      'categoryId': categoryId,
      'operator': operator,
      'transferStatus': transferStatus,
      'depositStatus': depositStatus,
      'operatorValidationUrl': operatorValidationUrl,
      'operatorFees': operatorFees,
    };
  }

  @override
  List<Object> get props => [
        id,
        accountId,
        createdAt,
        updatedAt,
        reference,
        amount,
        fees,
        chargedAmount,
        amount,
        fees,
        fxRate,
        originalAmount,
        balanceAfter,
        label,
        date,
        iconUrl,
        type,
        status,
        hasGif,
        transactionServiceName,
        tag,
        note,
        illustrationUrl,
        description,
        parentTransactionId,
        transactionVerificationStatus,
        recipientE164,
        recipientLabel,
        senderE164,
        senderLabel,
        categoryId,
        transferStatus,
        depositStatus,
        operatorValidationUrl,
        operator,
        operatorFees,
      ];
}

extension LedgerTransactionModelExtension on TransactionModel {}
