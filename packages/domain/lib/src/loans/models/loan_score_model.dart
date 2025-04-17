import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/loans/models/loan_score_data_model.dart';

class LoanScoreModel extends BaseModel {
  const LoanScoreModel({
    required this.title,
    required this.globalTitle,
    required this.subTitle,
    required this.description,
    required this.icon,
    required this.recommendedAmount,
    required this.data,
    required this.scoreClass,
  });

  factory LoanScoreModel.fromJson(Map<String, dynamic> json) {
    return LoanScoreModel(
      title: DP.asString(json['title']),
      globalTitle: DP.asString(json['globalTitle']),
      subTitle: DP.asString(json['subTitle']),
      description: DP.asString(json['description']),
      icon: DP.asString(json['icon']),
      recommendedAmount: DP.asString(json['recommendedAmount']),
      data: LoanScoreDataModel.fromJson(DP.asMap(json['data'])),
      scoreClass: DP.asDouble(json['scoreClass']),
    );
  }

  final String title;
  final String globalTitle;
  final String subTitle;
  final String description;
  final String icon;
  final String recommendedAmount;
  final LoanScoreDataModel data;
  final double scoreClass;

  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'globalTitle': globalTitle,
      'subTitle': subTitle,
      'description': description,
      'icon': icon,
      'recommendedAmount': recommendedAmount,
      'data': data.toJson(),
      'scoreClass': scoreClass,
    };
  }

  @override
  List<Object?> get props => [
        title,
        globalTitle,
        subTitle,
        description,
        icon,
        recommendedAmount,
        data,
        scoreClass,
      ];
}

extension LoanScoreModelDomainExtension on LoanScoreModel {}
