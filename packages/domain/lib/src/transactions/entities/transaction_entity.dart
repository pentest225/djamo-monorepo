import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/responses/cursor_response.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:domain/src/transactions/entities/transaction_tag_entity.dart';
import 'package:domain/src/transactions/enums/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

typedef TransactionEntities = List<TransactionEntity>;
typedef PaginatedTransactionResponse = ({CursorResponse cursor, TransactionEntities transactions});

class TransactionEntity extends BaseEntity with SearchableMixin {
  const TransactionEntity({
    this.id = emptyString,
    this.accountId = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.reference = emptyString,
    this.amount = 0.0,
    this.fees = 0.0,
    this.chargedAmount = 0.0,
    this.fxRate = emptyString,
    this.originalAmount = emptyString,
    this.balanceAfter = 0.0,
    this.label = emptyString,
    this.date = emptyString,
    this.iconUrl = emptyString,
    this.type = emptyString,
    this.status = emptyString,
    this.hasGif = false,
    this.transactionServiceName = emptyString,
    this.tag = TransactionTagEntity.empty,
    this.note = emptyString,
    this.illustrationUrl = emptyString,
    this.description = emptyString,
    this.parentTransactionId = emptyString,
    this.transactionVerificationStatus = emptyString,
    this.recipientE164 = emptyString,
    this.recipientLabel = emptyString,
    this.senderE164 = emptyString,
    this.senderLabel = emptyString,
    this.categoryId = emptyString,
    this.operator = emptyString,
    this.transferStatus = emptyString,
    this.depositStatus = emptyString,
    this.operatorValidationUrl = const {},
    this.operatorFees = 0.0,
  });

  // local
  factory TransactionEntity.local({
    required double amount,
    required String serviceIconUrl,
    required String identifier,
    TransactionStatusEnum status = TransactionStatusEnum.unknown,
    String recipientLabel = emptyString,
    String recipientE164 = emptyString,
    String? createdAt,
    double operatorFees = 0.0,
  }) {
    return TransactionEntity(
      amount: amount,
      iconUrl: serviceIconUrl,
      status: status.name,
      transactionServiceName: identifier,
      recipientLabel: recipientLabel,
      recipientE164: recipientE164,
      createdAt: createdAt ?? DateTime.now().toIso8601String(),
      operatorFees: operatorFees,
    );
  }

  final String id;
  final String accountId;
  final String createdAt;
  final String updatedAt;
  final String reference;
  final double amount;
  final double fees;
  final double chargedAmount;
  final String fxRate;
  final String originalAmount;
  final double balanceAfter;
  final String label;

  /// Prefer using [getDate] instead
  @internal
  final String date;
  final String iconUrl;

  /// Prefer using [getType] instead
  @internal
  final String type;

  /// Prefer using [getStatus] instead
  @internal
  final String status;
  final bool hasGif;
  final String transactionServiceName;
  final TransactionTagEntity tag;
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

  static const empty = TransactionEntity();

  bool get isEmpty => this == empty;

  @override
  bool hasMatchWithSearchKey({required String key}) {
    return [
      useHasMatchWithSearchKey(key: key, field: label),
      useHasMatchWithSearchKey(key: key, field: note),
      useHasMatchWithSearchKey(key: key, field: description),
      useHasMatchWithSearchKey(key: key, field: recipientLabel),
      useHasMatchWithSearchKey(key: key, field: senderLabel),
      useHasMatchWithSearchKey(key: key, field: recipientE164),
      useHasMatchWithSearchKey(key: key, field: senderE164),
      useHasMatchWithSearchKey(key: key, field: tag.label),
      useHasMatchWithSearchKey(key: key, field: operator),
    ].any((e) => e);
  }

  TransactionEntity copyWith({
    String? categoryId,
    TransactionStatusEnum? status,
  }) {
    return TransactionEntity(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      reference: reference,
      amount: amount,
      fees: fees,
      chargedAmount: chargedAmount,
      fxRate: fxRate,
      originalAmount: originalAmount,
      label: label,
      date: date,
      iconUrl: iconUrl,
      type: type,
      status: status?.identifier ?? this.status,
      hasGif: hasGif,
      transactionServiceName: transactionServiceName,
      tag: tag,
      note: note,
      illustrationUrl: illustrationUrl,
      description: description,
      parentTransactionId: parentTransactionId,
      transactionVerificationStatus: transactionVerificationStatus,
      recipientE164: recipientE164,
      recipientLabel: recipientLabel,
      senderE164: senderE164,
      senderLabel: senderLabel,
      categoryId: categoryId ?? this.categoryId,
      operator: operator,
      transferStatus: transferStatus,
      depositStatus: depositStatus,
      operatorValidationUrl: operatorValidationUrl,
      operatorFees: operatorFees,
    );
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
        operator,
        transferStatus,
        depositStatus,
        operatorValidationUrl,
        operatorFees,
      ];
}

extension LedgerTransactionEntityExtension on TransactionEntity {
  String get _identifierGroup {
    return transactionServiceName.getServiceIdentifierGroup;
  }

  bool get isCategorizable {
    return getType.isDebit && !identifier.isVaultService;
  }

  bool get isReceiptDownloadable {
    return !shouldBeValidated && getStatus.isCompleted && !identifier.isVaultService;
  }

  bool get shouldBeValidated {
    return identifier.isCashInWave && getStatus.isPending && getDefaultValidationUrl.isValidUrl;
  }

  MarketIsoCodeEnum get getMarketIsoCode {
    final code = transactionServiceName.split('_').lastOrNull ?? '';
    return MarketIsoCodeEnum.fromCode(code);
  }

  ServiceIdentifierEnum get identifier {
    final i1 = ServiceIdentifierEnum.fromString(_identifierGroup);
    if (!i1.isUnknown) return i1;
    return ServiceIdentifierEnum.fromString(transactionServiceName);
  }

  TransactionTypeEnum get getType => TransactionTypeEnum.fromString(type);

  TransactionStatusEnum get getStatus => TransactionStatusEnum.fromIdentifier(status);

  TransactionTrackingStatusEnum get getTransferStatus => TransactionTrackingStatusEnum.formString(transferStatus);

  TransactionTrackingStatusEnum get getDepositStatus => TransactionTrackingStatusEnum.formString(depositStatus);

  TransactionTrackingStepperStatusEnum get getDispatchedTransferStatus {
    if (getStatus.isCompleted || getTransferStatus.isDispatched || getTransferStatus.isFailed) {
      return TransactionTrackingStepperStatusEnum.success;
    } else if (getTransferStatus.isInitiated) {
      if (getStatus.isPending) {
        return TransactionTrackingStepperStatusEnum.inProgress;
      } else if (getStatus.isFailed || getStatus.isFrozen) {
        return TransactionTrackingStepperStatusEnum.failure;
      }
    }
    return TransactionTrackingStepperStatusEnum.notStarted;
  }

  TransactionTrackingStepperStatusEnum get getCompletedTransferStatus {
    if (getStatus.isCompleted) {
      return TransactionTrackingStepperStatusEnum.success;
    } else if (getStatus.isFailed || getStatus.isFrozen) {
      return TransactionTrackingStepperStatusEnum.failure;
    } else {
      if (getTransferStatus.isDispatched) {
        return TransactionTrackingStepperStatusEnum.inProgress;
      } else {
        return TransactionTrackingStepperStatusEnum.notStarted;
      }
    }
  }

  DateTime? get getDate => DateTime.tryParse(date);

  DateTime? get getCreatedAt => DateTime.tryParse(createdAt);

  DateTime? get getUpdatedAt => DateTime.tryParse(updatedAt);

  String get getMonthPeriod {
    final date = getDate;
    if (date == null) {
      return '-';
    }
    return date.formatAs('yyyy-MM');
  }

  String get getDayPeriod {
    final date = getDate;
    if (date == null) {
      return '-';
    }
    return date.formatAs('yMd');
  }

  bool get isPayment {
    return transactionServiceName.startsWith('PAYMENT') || transactionServiceName.contains('PAYMENT') || label.toLowerCase().startsWith('paiement');
  }

  bool get isOperatorCIEPrepaid {
    return operator.contains('CIE_PREPAID');
  }

  bool get isOperatorWoyofal {
    return operator.contains('WOYOFAL');
  }

  bool get hasRechargeTokens {
    return identifier.isCIEPrepaid || identifier.isWoyofal || isOperatorCIEPrepaid || isOperatorWoyofal;
  }

  TransactionVerificationStatusEnum get getTransactionVerificationStatus {
    return TransactionVerificationStatusEnum.fromString(transactionVerificationStatus);
  }

  String get getDefaultValidationUrl {
    return DP.asString(operatorValidationUrl['default']);
  }

  bool get isInternationalPayment {
    final currency = getOriginCurrency;
    if (currency.isEmpty) {
      return false;
    }
    return !['XOF', 'F', 'FCFA', 'F CFA'].any((e) => currency == e);
  }

  String get getOriginCurrency {
    if (fxRate.isEmpty) {
      return '';
    }
    final originRate = fxRate.split('=').firstOrNull?.trim();
    if (originRate == null) {
      return '';
    }
    return originRate.split(' ').lastOrNull ?? '';
  }
}

typedef GroupedByAccountTransactions = Map<String, Map<String, Map<String, TransactionEntities>>>;

class ClientTransactions extends Equatable {
  const ClientTransactions({
    required GroupedByAccountTransactions transactions,
  }) : _transactions = transactions;

  final GroupedByAccountTransactions _transactions;

  TransactionEntities get _all {
    return _transactions.values
        .expand(
          (e1) => e1.values.expand((e2) => e2.values.expand((e3) => e3)),
        )
        .toList();
  }

  TransactionEntities getAllAccountTransaction(String id) {
    return _transactions[id]?.values.expand((e1) => e1.values.expand((e2) => e2)).toList() ?? [];
  }

  Map<String, TransactionEntities> getAccountTransactionsGroupedByMonth(String id) {
    return _transactions[id]?.map((key, value) {
          return MapEntry(key, value.values.expand((e) => e).toList());
        }) ??
        {};
  }

  Map<String, Map<String, TransactionEntities>> getAccountTransactionsGroupedByMonthAndDay(String id) {
    return _transactions[id] ?? {};
  }

  TransactionEntity get lastCompletedCashIn {
    return _all.firstWhere(
      (t) => t.getStatus.isCompleted && t.identifier.isCashin,
      orElse: () => TransactionEntity.empty,
    );
  }

  TransactionEntity get lastCompletedTransfer {
    return _all.firstWhere(
      (t) => t.getStatus.isCompleted && t.identifier.isTransfer && !t.identifier.isLocalP2PTransfer,
      orElse: () => TransactionEntity.empty,
    );
  }

  TransactionEntity get lastCompletedP2PTransfer {
    return _all.firstWhere(
      (t) => t.getStatus.isCompleted && t.identifier.isLocalP2PTransfer,
      orElse: () => TransactionEntity.empty,
    );
  }

  TransactionEntity get lastCompletedPayment {
    return _all.firstWhere(
      (t) => t.getStatus.isCompleted && t.identifier.isPayment,
      orElse: () => TransactionEntity.empty,
    );
  }

  static const empty = ClientTransactions(transactions: {});

  bool get isEmpty => this == empty;

  @override
  List<Object> get props => [_transactions];
}
