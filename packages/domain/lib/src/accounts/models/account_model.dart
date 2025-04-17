import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/accounts/models/monthly_credit_limit_model.dart';

typedef AccountModels = List<AccountModel>;

class AccountModel extends BaseModel {
  const AccountModel({
    required this.id,
    required this.balance,
    required this.status,
    required this.type,
    required this.lastFourDigits,
    required this.expirationDate,
    required this.isDefaultAccount,
    required this.isVirtualCard,
    required this.category,
    required this.hasCard,
    required this.isDestroyedAfterNSFs,
    required this.isSuspendedAfterNSFs,
    required this.monthlyCreditLimit,
    this.daysLeftUntilExpiration,
    this.destroyedAt,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      id: DP.asString(json['id']),
      balance: DP.asDouble(json['balance']),
      status: DP.asString(json['status']),
      type: DP.asString(json['type']),
      lastFourDigits: DP.asString(json['lastFourDigits']),
      expirationDate: DP.asString(json['expirationDate']),
      isDefaultAccount: DP.asBool(json['isDefaultAccount']),
      isVirtualCard: DP.asBool(json['isVirtualCard']),
      category: DP.asString(json['category']),
      daysLeftUntilExpiration: DP.asInt(json['daysLeftUntilExpiration']),
      hasCard: DP.asBool(json['hasCard']),
      isDestroyedAfterNSFs: DP.asBool(json['isDestroyedAfterNSFs']),
      isSuspendedAfterNSFs: DP.asBool(json['isSuspendedAfterNSFs']),
      monthlyCreditLimit: MonthlyCreditLimitModel.fromJson(DP.asMap(json['monthlyCreditLimit'])),
      destroyedAt: json.containsKey('destroyedAt') ? DP.asString(json['destroyedAt']) : null,
    );
  }

  final String id;
  final double balance;
  final String status;
  final String type;
  final String lastFourDigits;
  final String expirationDate;
  final bool isDefaultAccount;
  final bool isVirtualCard;
  final String category;
  final int? daysLeftUntilExpiration;
  final bool hasCard;
  final bool isDestroyedAfterNSFs;
  final bool isSuspendedAfterNSFs;
  final MonthlyCreditLimitModel monthlyCreditLimit;
  final String? destroyedAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'balance': balance,
      'status': status,
      'type': type,
      'lastFourDigits': lastFourDigits,
      'expirationDate': expirationDate,
      'isDefaultAccount': isDefaultAccount,
      'isVirtualCard': isVirtualCard,
      'category': category,
      'daysLeftUntilExpiration': daysLeftUntilExpiration,
      'hasCard': hasCard,
      'isDestroyedAfterNSFs': isDestroyedAfterNSFs,
      'isSuspendedAfterNSFs': isSuspendedAfterNSFs,
      'monthlyCreditLimit': monthlyCreditLimit.toJson(),
      'destroyedAt': destroyedAt,
    };
  }

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
        destroyedAt,
      ];
}

extension AccountModelExtension on AccountModel {}
