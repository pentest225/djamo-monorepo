import 'package:domain/src/_core/_core.dart';

typedef VaultSavingProductEntities = List<VaultSavingProductEntity>;

class VaultSavingProductEntity extends BaseEntity {
  const VaultSavingProductEntity({
    this.id = emptyString,
    this.isBlocked = false,
    this.blockedDurationDays = 0,
    this.blockedDurationLabel = emptyString,
    this.interestRate = 0.0,
  });

  final String id;
  final bool isBlocked;
  final int blockedDurationDays;
  final String blockedDurationLabel;
  final double interestRate;

  static const empty = VaultSavingProductEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        isBlocked,
        blockedDurationDays,
        blockedDurationLabel,
        interestRate,
      ];
}

extension VaultSavingProductEntityDomainExtension on VaultSavingProductEntity {}
