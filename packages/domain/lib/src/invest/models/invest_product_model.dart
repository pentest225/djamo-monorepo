import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/invest.dart';

typedef InvestProductModels = List<InvestProductModel>;

class InvestProductModel extends BaseModel {
  const InvestProductModel({
    required this.id,
    required this.category,
    required this.description,
    required this.descriptionSummary,
    required this.documentUrl,
    required this.externalId,
    required this.liquidative,
    required this.name,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.iconUrl,
    required this.subscriptionFees,
    required this.sellingFees,
    required this.performance,
    required this.risk,
    required this.type,
  });

  factory InvestProductModel.fromJson(Map<String, dynamic> json) {
    return InvestProductModel(
      id: DP.asString(json['id']),
      category: DP.asMap(json['category']),
      description: DP.asString(json['description']),
      descriptionSummary: DP.asString(json['descriptionSummary']),
      documentUrl: DP.asString(json['documentUrl']),
      externalId: DP.asInt(json['externalId']),
      liquidative: InvestProductLiquidativeModel.fromJson(DP.asMap(json['liquidative'])),
      name: DP.asString(json['name']),
      isActive: DP.asBool(json['isActive']),
      createdAt: DP.asString(json['createdAt']),
      updatedAt: DP.asString(json['updatedAt']),
      iconUrl: DP.asString(json['iconUrl']),
      subscriptionFees: DP.asDouble(json['subscriptionFees']),
      sellingFees: DP.asDouble(json['sellingFees']),
      performance: InvestProductPerformanceModel.fromJson(
        DP.asMap(json['performance']),
      ),
      risk: DP.asString(json['risk']),
      type: DP.asMap(json['type']),
    );
  }

  final String id;
  final Map<String, dynamic> category;
  final String description;
  final String descriptionSummary;
  final String documentUrl;
  final int externalId;
  final InvestProductLiquidativeModel liquidative;
  final String name;
  final bool isActive;
  final String createdAt;
  final String updatedAt;
  final String iconUrl;
  final double subscriptionFees;
  final double sellingFees;
  final InvestProductPerformanceModel performance;
  final String risk;
  final Map<String, dynamic> type;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'description': description,
      'descriptionSummary': descriptionSummary,
      'documentUrl': documentUrl,
      'externalId': externalId,
      'liquidative': liquidative.toJson(),
      'name': name,
      'isActive': isActive,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'iconUrl': iconUrl,
      'subscriptionFees': subscriptionFees,
      'sellingFees': sellingFees,
      'performance': performance.toJson(),
      'risk': risk,
      'type': type,
    };
  }

  @override
  List<Object?> get props => [
        id,
        category,
        description,
        descriptionSummary,
        documentUrl,
        externalId,
        liquidative,
        name,
        isActive,
        createdAt,
        updatedAt,
        iconUrl,
        subscriptionFees,
        sellingFees,
        performance,
        risk,
        type,
      ];
}

extension InvestProductModelExtension on InvestProductModel {}
