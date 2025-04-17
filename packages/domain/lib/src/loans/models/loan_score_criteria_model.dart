import 'package:domain/src/_core/_core.dart';

class LoanScoreCriteriaModel extends BaseModel {
  const LoanScoreCriteriaModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.value,
    required this.valueCoefficient,
    required this.componentType,
    required this.remainingDate,
    required this.body,
    required this.tooltipTitle,
    required this.tooltipBody,
    required this.isActiveTooltip,
  });

  factory LoanScoreCriteriaModel.fromJson(Map<String, dynamic> json) {
    return LoanScoreCriteriaModel(
      title: DP.asString(json['title']),
      description: DP.asString(json['description']),
      icon: DP.asString(json['icon']),
      value: DP.asDouble(json['value']),
      valueCoefficient: DP.asDouble(json['valueCoefficient']),
      componentType: DP.asString(json['componentType']),
      remainingDate: DP.asString(json['remainingDate']),
      body: DP.asString(json['body']),
      tooltipTitle: DP.asString(json['tooltipTitle']),
      tooltipBody: DP.asString(json['tooltipBody']),
      isActiveTooltip: DP.asBool(json['isActiveTooltip']),
    );
  }

  final String title;
  final String description;
  final String icon;
  final double value;
  final double valueCoefficient;
  final String componentType;
  final String remainingDate;
  final String body;
  final String tooltipTitle;
  final String tooltipBody;
  final bool isActiveTooltip;

  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'icon': icon,
      'value': value,
      'valueCoefficient': valueCoefficient,
      'componentType': componentType,
      'remainingDate': remainingDate,
      'body': body,
      'tooltipTitle': tooltipTitle,
      'tooltipBody': tooltipBody,
      'isActiveTooltip': isActiveTooltip,
    };
  }

  @override
  List<Object?> get props => [
        title,
        description,
        icon,
        value,
        valueCoefficient,
        componentType,
        remainingDate,
        body,
        tooltipTitle,
        tooltipBody,
        isActiveTooltip,
      ];
}

extension LoanScoreCriteriaModelDomainExtension on LoanScoreCriteriaModel {}
