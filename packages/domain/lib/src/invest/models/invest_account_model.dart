import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/models/invest_product_balance_model.dart';

class InvestAccountModel extends BaseModel {
  const InvestAccountModel({
    required this.id,
    required this.status,
    required this.products,
  });

  factory InvestAccountModel.fromJson(Map<String, dynamic> json) {
    return InvestAccountModel(
      id: DP.asString(json['id']),
      status: DP.asString(json['status']),
      products: DP.asListOf<JsonMap>(json['products']).map(InvestProductBalanceModel.fromJson).toList(),
    );
  }

  final String id;
  final String status;
  final InvestProductBalanceModels products;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'products': products.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        id,
        status,
        products,
      ];
}

extension InvestAccountModelExtension on InvestAccountModel {}
