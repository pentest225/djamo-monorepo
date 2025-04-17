import 'package:domain/src/_core/contracts/base_entity.dart';
import 'package:domain/src/_core/utils/use_safe_division.dart';
import 'package:domain/src/invest/enums/enums.dart';

typedef InvestTransactionEntity = InvestBaseTransactionEntity;
typedef InvestTransactionEntities = List<InvestTransactionEntity>;

abstract class InvestBaseTransactionEntity extends BaseEntity {
  const InvestBaseTransactionEntity();

  InvestTransactionTypeEnum get type;

  String get getId;

  String get getProductId;

  String get getReference;

  double get getShare;

  double get getFees;

  double get getAmount;

  double? get getValueAtTransactionDate {
    return useSafeDivision(getAmount, getShare);
  }

  InvestTransactionStatusEnum get getStatus;

  DateTime? get getCreatedAt;

  DateTime? get getUpdatedAt;

  bool get isEmpty;

  static const empty = _Empty();
}

class _Empty extends InvestBaseTransactionEntity {
  const _Empty();

  @override
  bool get isEmpty => true;

  @override
  double get getAmount => 0;

  @override
  DateTime? get getCreatedAt => null;

  @override
  DateTime? get getUpdatedAt => null;

  @override
  String get getId => '';

  @override
  String get getProductId => '';

  @override
  String get getReference => '';

  @override
  double get getShare => 0;

  @override
  double get getFees => 0;

  @override
  InvestTransactionStatusEnum get getStatus => InvestTransactionStatusEnum.none;

  @override
  InvestTransactionTypeEnum get type => InvestTransactionTypeEnum.subscription;

  @override
  List<Object> get props => [];
}
