import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/entities/invest_base_transaction_mixin.dart';
import 'package:domain/src/invest/enums/invest_transaction_status_enum.dart';
import 'package:domain/src/invest/enums/invest_transaction_type_enum.dart';

typedef InvestSellingEntities = List<InvestSellingEntity>;

class InvestSellingEntity extends InvestBaseTransactionEntity {
  const InvestSellingEntity({
    this.id = emptyString,
    this.externalId = 0,
    this.submittedAmount = 0.0,
    this.amount = 0.0,
    this.fees = 0.0,
    this.share = 0.0,
    this.accountId = emptyString,
    this.productId = emptyString,
    this.isActive = false,
    this.status = emptyString,
    this.reference = emptyString,
    this.sellingType = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
  });

  final String id;
  final int externalId;
  final double submittedAmount;
  final double amount;
  final double fees;
  final double share;
  final String accountId;
  final String productId;
  final bool isActive;
  final String status;
  final String reference;
  final String sellingType;
  final String createdAt;
  final String updatedAt;

  @override
  double get getAmount {
    if (amount != 0) {
      return amount;
    }
    return submittedAmount;
  }

  @override
  DateTime? get getCreatedAt => DateTime.tryParse(createdAt);

  @override
  DateTime? get getUpdatedAt => DateTime.tryParse(updatedAt);

  @override
  double get getFees => fees;

  @override
  String get getId => id;

  @override
  String get getProductId => productId;

  @override
  String get getReference => reference;

  @override
  double get getShare => share;

  @override
  InvestTransactionStatusEnum get getStatus => InvestTransactionStatusEnum.fromString(status);

  @override
  InvestTransactionTypeEnum get type => InvestTransactionTypeEnum.selling;

  static const empty = InvestSellingEntity();

  @override
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        externalId,
        submittedAmount,
        amount,
        fees,
        share,
        accountId,
        productId,
        isActive,
        status,
        reference,
        sellingType,
        createdAt,
        updatedAt,
      ];
}

extension InvestSellingEntityExtension on InvestSellingEntity {}
