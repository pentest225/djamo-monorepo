import 'package:domain/src/_core/_core.dart';

typedef MonthlyCategoryStatsModels = List<MonthlyCategoryStatsModel>;

class MonthlyCategoryStatsModel extends BaseModel {
  const MonthlyCategoryStatsModel({
    required this.categoryId,
    required this.totalDebit,
    required this.totalCredit,
    required this.countCredit,
    required this.countDebit,
  });

  factory MonthlyCategoryStatsModel.fromJson(Map<String, dynamic> json) {
    return MonthlyCategoryStatsModel(
      categoryId: DP.asString(json['categoryId']),
      totalDebit: DP.asDouble(json['totalDebit']),
      totalCredit: DP.asDouble(json['totalCredit']),
      countCredit: DP.asInt(json['countCredit']),
      countDebit: DP.asInt(json['countDebit']),
    );
  }

  final String categoryId;
  final double totalDebit;
  final double totalCredit;
  final int countCredit;
  final int countDebit;

  @override
  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'totalDebit': totalDebit,
      'totalCredit': totalCredit,
      'countCredit': countCredit,
      'countDebit': countDebit,
    };
  }

  @override
  List<Object?> get props => [
        categoryId,
        totalDebit,
        totalCredit,
        countCredit,
        countDebit,
      ];
}

extension MonthlyCategoryStatsModelDomainExtension on MonthlyCategoryStatsModel {}
