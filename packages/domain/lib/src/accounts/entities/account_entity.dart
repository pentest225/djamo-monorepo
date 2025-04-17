import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/entities/account_subscription_entity.dart';
import 'package:domain/src/accounts/entities/monthly_credit_limit_entity.dart';
import 'package:domain/src/accounts/enums/enums.dart';
import 'package:meta/meta.dart';

typedef AccountEntities = List<AccountEntity>;

class AccountEntity extends BaseEntity {
  const AccountEntity({
    this.id = emptyString,
    this.balance = 0.0,
    this.status = emptyString,
    this.type = emptyString,
    this.lastFourDigits = emptyString,
    this.expirationDate = emptyString,
    this.isDefaultAccount = false,
    this.isVirtualCard = false,
    this.category = emptyString,
    this.daysLeftUntilExpiration,
    this.hasCard = false,
    this.isDestroyedAfterNSFs = false,
    this.isSuspendedAfterNSFs = false,
    this.monthlyCreditLimit = MonthlyCreditLimitEntity.empty,
    this.subscriptions = const [],
    this.destroyedAt,
  });

  final String id;
  final double balance;
  @internal
  final String status;
  final String type;
  final String lastFourDigits;
  final String expirationDate;
  final bool isDefaultAccount;
  final bool isVirtualCard;
  @internal
  final String category;
  final int? daysLeftUntilExpiration;
  final bool hasCard;
  final bool isDestroyedAfterNSFs;
  final bool isSuspendedAfterNSFs;
  final MonthlyCreditLimitEntity monthlyCreditLimit;
  final List<AccountSubscriptionEntity> subscriptions;
  final String? destroyedAt;

  static const empty = AccountEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        balance,
        status,
        type,
        lastFourDigits,
        expirationDate,
        isDefaultAccount,
        isVirtualCard,
        category,
        daysLeftUntilExpiration,
        hasCard,
        isDestroyedAfterNSFs,
        isSuspendedAfterNSFs,
        monthlyCreditLimit,
        subscriptions,
        destroyedAt,
      ];

  AccountEntity copyWith({
    double? balance,
    String? status,
  }) {
    return AccountEntity(
      id: id,
      balance: balance ?? this.balance,
      status: status ?? this.status,
      type: type,
      lastFourDigits: lastFourDigits,
      expirationDate: expirationDate,
      isDefaultAccount: isDefaultAccount,
      isVirtualCard: isVirtualCard,
      category: category,
      daysLeftUntilExpiration: daysLeftUntilExpiration,
      hasCard: hasCard,
      isDestroyedAfterNSFs: isDestroyedAfterNSFs,
      isSuspendedAfterNSFs: isSuspendedAfterNSFs,
      monthlyCreditLimit: monthlyCreditLimit,
      subscriptions: subscriptions,
      destroyedAt: destroyedAt,
    );
  }
}

extension AccountEntityExtension on AccountEntity {
  AccountTypeEnum get getType {
    return AccountTypeEnum.fromString(type);
  }

  AccountStatusEnum get getStatus {
    return AccountStatusEnum.fromString(status);
  }

  AccountCategoryEnum get getCategory {
    return AccountCategoryEnum.fromIdentifier(category);
  }

  double get getMainProductBalanceLimit {
    return 1000;
  }

  bool get hasMonthlyCreditLimit {
    return !monthlyCreditLimit.isEmpty;
  }

  DateTime? get getDestroyedAt {
    return destroyedAt != null ? DateTime.tryParse(destroyedAt!) : null;
  }

  bool get willExpireIn60days => daysLeftUntilExpiration != null && daysLeftUntilExpiration! <= 60;

  bool get shouldBeMigratedToMFI {
    return getStatus.isActivated && getType.isGtpEcobankVc;
  }
}

extension AccountEntitiesX on AccountEntities {
  AccountEntity get getMainAccount {
    return firstWhere(
      (element) {
        return element.getCategory.isPrimary;
      },
      orElse: () => AccountEntity.empty,
    );
  }

  AccountEntity get getLoanAccount {
    return firstWhere(
      (element) {
        return element.getCategory.isLoan;
      },
      orElse: () => AccountEntity.empty,
    );
  }

  AccountEntity get pendingAccount {
    return firstWhere(
      (element) {
        return element.getCategory.isPending;
      },
      orElse: () => AccountEntity.empty,
    );
  }
}
