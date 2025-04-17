import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/invest/entities/invest_product_liquidative_entity.dart';
import 'package:domain/src/invest/entities/invest_product_performance_entity.dart';
import 'package:meta/meta.dart';

typedef InvestProductEntities = List<InvestProductEntity>;

typedef LabelValue = ({String id, String label});

class InvestProductEntity extends BaseEntity {
  const InvestProductEntity({
    this.id = emptyString,
    this.category = const {},
    this.description = emptyString,
    this.descriptionSummary = emptyString,
    this.documentUrl = emptyString,
    this.externalId = 0,
    this.liquidative = InvestProductLiquidativeEntity.empty,
    this.name = emptyString,
    this.isActive = false,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.iconUrl = emptyString,
    this.subscriptionFees = 0.0,
    this.sellingFees = 0.0,
    this.performance = InvestProductPerformanceEntity.empty,
    this.risk = emptyString,
    this.type = const {},
  });

  final String id;
  @internal

  ///Use [getCategory] instead
  final Map<String, dynamic> category;
  final String description;
  final String descriptionSummary;
  final String documentUrl;
  final int externalId;
  final InvestProductLiquidativeEntity liquidative;
  final String name;
  final bool isActive;
  final String createdAt;
  final String updatedAt;
  final String iconUrl;
  final double subscriptionFees;
  final double sellingFees;
  final InvestProductPerformanceEntity performance;
  final String risk;
  @internal

  ///Use [getType] instead
  final Map<String, dynamic> type;

  static const empty = InvestProductEntity();
  bool get isEmpty => this == empty;

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

extension InvestProductEntityExtension on InvestProductEntity {
  String get getName {
    return name.split(' ').last.trim().capitalize();
  }

  LabelValue get getCategory => (
        id: DP.asString(category['id']),
        label: DP.asString(category['label']),
      );

  LabelValue get getType => (
        id: DP.asString(type['id']),
        label: DP.asString(type['label']),
      );

  List<JsonMap> get getProspectusData {
    return DP.asListOf(jsonDecode(descriptionSummary));
  }
}
