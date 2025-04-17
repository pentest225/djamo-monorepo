import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/_core/utils/use_safe_division.dart';
import 'package:domain/src/vaults/enums/enums.dart';
import 'package:meta/meta.dart';

typedef VaultEntities = List<VaultEntity>;

class VaultEntity extends BaseEntity {
  const VaultEntity({
    this.id = emptyString,
    this.description = emptyString,
    this.deadline = emptyString,
    this.targetAmount = 0.0,
    this.hasChangeAutoCredit = false,
    this.changeAutoCreditMultiplier = 0.0,
    this.hasRecurringAutoCredit = false,
    this.recurringAutoCreditAmount = 0.0,
    this.recurringAutoCreditFrequency = emptyString,
    this.iconUrl = emptyString,
    this.accountId = emptyString,
    this.vaultBalance = 0.0,
    this.createdAt = emptyString,
    this.vaultChallenge = emptyString,
    this.type = emptyString,
    this.interestEarned = 0.0,
    this.interestPosted = 0.0,
    this.interestRate = 0.0,
    this.productId = emptyString,
  });

  final String id;
  final String description;
  final String deadline;
  final double targetAmount;
  final bool hasChangeAutoCredit;
  final double changeAutoCreditMultiplier;
  final bool hasRecurringAutoCredit;
  final double recurringAutoCreditAmount;
  final String recurringAutoCreditFrequency;
  final String iconUrl;
  final String accountId;
  final double vaultBalance;
  final String createdAt;
  final String vaultChallenge;

  final double interestEarned;
  final double interestPosted;
  final double interestRate;
  final String productId;

  @internal
  final String type;

  static const empty = VaultEntity();

  bool get isEmpty => this == empty;

  VaultEntity copyWith({
    String? id,
    String? description,
    String? deadline,
    double? targetAmount,
    bool? hasChangeAutoCredit,
    double? changeAutoCreditMultiplier,
    bool? hasRecurringAutoCredit,
    double? recurringAutoCreditAmount,
    String? recurringAutoCreditFrequency,
    String? iconUrl,
    String? accountId,
    double? vaultBalance,
    String? createdAt,
    String? vaultChallenge,
    String? type,
    String? productId,
  }) {
    return VaultEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      deadline: deadline ?? this.deadline,
      targetAmount: targetAmount ?? this.targetAmount,
      hasChangeAutoCredit: hasChangeAutoCredit ?? this.hasChangeAutoCredit,
      changeAutoCreditMultiplier: changeAutoCreditMultiplier ?? this.changeAutoCreditMultiplier,
      hasRecurringAutoCredit: hasRecurringAutoCredit ?? this.hasRecurringAutoCredit,
      recurringAutoCreditAmount: recurringAutoCreditAmount ?? this.recurringAutoCreditAmount,
      recurringAutoCreditFrequency: recurringAutoCreditFrequency ?? this.recurringAutoCreditFrequency,
      iconUrl: iconUrl ?? this.iconUrl,
      accountId: accountId ?? this.accountId,
      vaultBalance: vaultBalance ?? this.vaultBalance,
      createdAt: createdAt ?? this.createdAt,
      vaultChallenge: vaultChallenge ?? this.vaultChallenge,
      type: type ?? this.type,
      interestEarned: interestEarned,
      interestPosted: interestPosted,
      interestRate: interestRate,
      productId: productId ?? this.productId,
    );
  }

  @override
  List<Object> get props => [
        id,
        description,
        deadline,
        targetAmount,
        hasChangeAutoCredit,
        changeAutoCreditMultiplier,
        hasRecurringAutoCredit,
        recurringAutoCreditAmount,
        recurringAutoCreditFrequency,
        iconUrl,
        accountId,
        vaultBalance,
        createdAt,
        vaultChallenge,
        interestEarned,
        interestPosted,
        interestRate,
        productId,
        type,
      ];
}

extension VaultEntityExtension on VaultEntity {
  VaultTypeEnum get getType {
    if (challengeID.isNotEmpty) {
      return VaultTypeEnum.challenge;
    }
    return VaultTypeEnum.fromString(type);
  }

  String get challengeID {
    return vaultChallenge;
  }

  String get savingProductId {
    return productId;
  }

  DateTime? get getDeadline => DateTime.tryParse(deadline);

  bool get isDeadlinePassed {
    return getDeadline?.isBefore(DateTime.now()) ?? false;
  }

  bool get canModifyRecurringAutoCredit {
    if (getType.isChallenge && hasRecurringAutoCredit && !isDeadlinePassed) {
      return false;
    }
    return true;
  }

  bool get canDelete {
    final t = getType;
    if (t.isBlocked) {
      return isDeadlinePassed;
    }
    return !t.isCashback;
  }

  bool get canBeUnlocked {
    return hasSavingProduct && getType.isBlocked;
  }

  String get getName {
    if (getType.isChallenge) {
      return description.toLowerCase().replaceAll('challenge', '').trim().capitalize();
    }
    return description;
  }

  bool get hasReachTarget {
    return vaultBalance >= targetAmount;
  }

  double get getProgression {
    try {
      final r = (vaultBalance * 100) / targetAmount;
      return (r.isNaN || r.isInfinite ? 0.0 : r).truncateToDouble();
    } catch (e) {
      return 0;
    }
  }

  bool get canDoWithdrawal {
    return vaultBalance > 0;
  }

  bool get canDoWithdrawalOnBlocked {
    return vaultBalance > 0 && getType.isBlocked && isDeadlinePassed;
  }

  bool get hasSavingProduct {
    return savingProductId.isNotEmpty;
  }

  double amountToLooseIfUnlockedBeforeDeadline(double percentage) {
    return useSafeDivision(interestEarned * percentage, 100);
  }
}
