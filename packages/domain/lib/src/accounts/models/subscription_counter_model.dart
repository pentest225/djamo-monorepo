import 'package:domain/src/_core/_core.dart';

class SubscriptionCounterModel extends BaseModel {
  const SubscriptionCounterModel({
    required this.id,
    required this.label,
    required this.billingLabel,
    required this.type,
    required this.rate,
    required this.value,
    required this.maximum,
    required this.fee,
    required this.withLoader,
  });

  factory SubscriptionCounterModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionCounterModel(
      id: DP.asString(json['id']),
      label: DP.asString(json['label']),
      billingLabel: DP.asString(json['billingLabel']),
      type: DP.asString(json['type']),
      rate: DP.asNum(json['rate']),
      value: DP.asNum(json['value']),
      maximum: DP.asNum(json['maximum']),
      fee: DP.asNum(json['fee']),
      withLoader: DP.asBool(json['withLoader']),
    );
  }

  final String id;
  final String label;
  final String billingLabel;
  final String type;
  final num rate;
  final num value;
  final num maximum;
  final num fee;
  final bool withLoader;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'billingLabel': billingLabel,
      'type': type,
      'rate': rate,
      'value': value,
      'maximum': maximum,
      'fee': fee,
      'withLoader': withLoader,
    };
  }

  @override
  List<Object?> get props => [
        id,
        label,
        billingLabel,
        type,
        rate,
        value,
        maximum,
        fee,
        withLoader,
      ];
}

extension SubscriptionCounterModelExtension on SubscriptionCounterModel {}
