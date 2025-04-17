import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/entities/invest_base_transaction_mixin.dart';
import 'package:domain/src/invest/enums/invest_transaction_status_enum.dart';
import 'package:domain/src/invest/enums/invest_transaction_type_enum.dart';

typedef InvestSubscriptionEntities = List<InvestSubscriptionEntity>;

class InvestSubscriptionEntity extends InvestBaseTransactionEntity {
  const InvestSubscriptionEntity({
    this.id = emptyString,
    this.share = 0.0,
    this.accountId = emptyString,
    this.productId = emptyString,
    this.amount = 0.0,
    this.fees = 0.0,
    this.externalId = 0,
    this.isActive = false,
    this.status = emptyString,
    this.reference = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
  });

  final String id;
  final double share;
  final String accountId;
  final String productId;
  final double amount;
  final double fees;
  final int externalId;
  final bool isActive;
  final String status;
  final String reference;
  final String createdAt;
  final String updatedAt;

  @override
  double get getAmount => amount;

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
  InvestTransactionTypeEnum get type => InvestTransactionTypeEnum.subscription;

  static const empty = InvestSubscriptionEntity();

  @override
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        share,
        accountId,
        productId,
        amount,
        fees,
        externalId,
        isActive,
        status,
        reference,
        createdAt,
        updatedAt,
      ];
}

extension InvestSubscriptionEntityExtension on InvestSubscriptionEntity {}
