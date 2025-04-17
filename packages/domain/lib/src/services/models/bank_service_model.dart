import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/markets/models/models.dart';
import 'package:domain/src/services/models/wire_account_service_model.dart';

typedef BankServiceModels = List<BankServiceModel>;

class BankServiceModel extends BaseModel {
  const BankServiceModel({
    required this.id,
    required this.name,
    required this.code,
    required this.market,
    required this.hasBankAccount,
    required this.iconUrl,
    required this.extras,
    required this.wireAccount,
    required this.order,
  });

  factory BankServiceModel.fromJson(Map<String, dynamic> json) {
    return BankServiceModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      code: DP.asString(json['code']),
      market: MarketModel.fromJson(DP.asMap(json['market'])),
      hasBankAccount: DP.asBool(json['hasBankAccount']),
      iconUrl: DP.asString(json['iconUrl']),
      extras: DP.asMap(json['extras']),
      wireAccount: WireAccountServiceModel.fromJson(DP.asMap(json['wireAccount'])),
      order: DP.asInt(json['order']),
    );
  }

  final String id;
  final String name;
  final String code;
  final MarketModel market;
  final bool hasBankAccount;
  final String iconUrl;
  final Map<String, dynamic> extras;
  final WireAccountServiceModel wireAccount;
  final int order;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'market': market.toJson(),
      'hasBankAccount': hasBankAccount,
      'iconUrl': iconUrl,
      'extras': extras,
      'wireAccount': wireAccount.toJson(),
      'order': order,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        market,
        hasBankAccount,
        iconUrl,
        extras,
        wireAccount,
        order,
      ];
}

extension BankServiceModelExtension on BankServiceModel {}
