import 'package:domain/src/_core/_core.dart';

typedef BillerServiceFieldSelectableItemModels = List<BillerServiceFieldSelectableItemModel>;

class BillerServiceFieldSelectableItemModel extends BaseModel {
  const BillerServiceFieldSelectableItemModel({
    required this.value,
    required this.title,
    required this.subtitle,
    required this.formatted,
    required this.code,
    required this.type,
  });

  factory BillerServiceFieldSelectableItemModel.fromJson(Map<String, dynamic> json) {
    return BillerServiceFieldSelectableItemModel(
      value: json['value'],
      title: DP.asString(json['title']),
      subtitle: DP.asString(json['subtitle']),
      formatted: DP.asString(json['formatted']),
      code: DP.asString(json['code']),
      type: DP.asString(json['type']),
    );
  }

  final Object? value;
  final String title;
  final String subtitle;
  final String formatted;
  final String code;
  final String type;

  @override
  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'title': title,
      'subtitle': subtitle,
      'formatted': formatted,
      'code': code,
      'type': type,
    };
  }

  @override
  List<Object?> get props => [
        value,
        title,
        subtitle,
        formatted,
        code,
        type,
      ];
}

extension BillerServiceFieldSelectableItemModelDomainExtension on BillerServiceFieldSelectableItemModel {}
