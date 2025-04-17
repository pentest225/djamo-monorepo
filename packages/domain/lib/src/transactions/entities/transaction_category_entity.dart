import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/transactions/enums/enums.dart';

typedef TransactionCategoryEntities = List<TransactionCategoryEntity>;

class TransactionCategoryEntity extends BaseEntity {
  const TransactionCategoryEntity({
    this.id = emptyString,
    this.identifier = emptyString,
    this.icon = emptyString,
    this.label = emptyString,
    this.description = emptyString,
    this.isDefault = false,
    this.isActive = false,
    this.order = 0,
  });

  final String id;
  final String identifier;
  final String icon;
  final String label;
  final String description;
  final bool isDefault;
  final bool isActive;
  final int order;

  static const empty = TransactionCategoryEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        identifier,
        icon,
        label,
        description,
        isDefault,
        isActive,
        order,
      ];
}

extension TransactionCategoryEntityExtension on TransactionCategoryEntity {
  TransactionCategoryIdentifierEnum get getIdentifierFromLabel {
    return TransactionCategoryIdentifierEnum.fromName(label);
  }
}
