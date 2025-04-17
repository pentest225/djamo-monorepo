import 'package:domain/src/_core/_core.dart';

class GiveawayItemModel extends BaseModel {
  const GiveawayItemModel({
    required this.data,
    required this.type,
    required this.expiryDateTime,
  });

  factory GiveawayItemModel.fromJson(Map<String, dynamic> json) {
    return GiveawayItemModel(
      data: DP.asMap(json['data']),
      type: DP.asString(json['type']),
      expiryDateTime: DP.asString(json['expiryDateTime']),
    );
  }

  final Map<String, dynamic> data;
  final String type;
  final String expiryDateTime;

  @override
  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'type': type,
      'expiryDateTime': expiryDateTime,
    };
  }

  @override
  List<Object?> get props => [
        data,
        type,
        expiryDateTime,
      ];
}

extension GiveawayItemModelExtension on GiveawayItemModel {}
