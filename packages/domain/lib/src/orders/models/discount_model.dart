import 'package:domain/src/_core/_core.dart';

class DiscountModel extends BaseModel {
  const DiscountModel({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.percentage,
    required this.cardPrice,
    required this.limit,
    required this.clientId,
  });

  factory DiscountModel.fromJson(Map<String, dynamic> json) {
    return DiscountModel(
      id: DP.asString(json['id']),
      startDate: DP.asString(json['startDate']),
      endDate: DP.asString(json['endDate']),
      percentage: DP.asInt(json['percentage']),
      cardPrice: DP.asInt(json['cardPrice']),
      limit: DP.asInt(json['limit']),
      clientId: DP.asString(json['clientId']),
    );
  }

  final String id;
  final String startDate;
  final String endDate;
  final int percentage;
  final int cardPrice;
  final int limit;
  final String clientId;

  @override
  List<Object?> get props => [
        id,
        startDate,
        endDate,
        percentage,
        cardPrice,
        limit,
        clientId,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate,
      'endDate': endDate,
      'percentage': percentage,
      'cardPrice': cardPrice,
      'limit': limit,
      'clientId': clientId,
    };
  }
}

extension DiscountModelExtension on DiscountModel {}
