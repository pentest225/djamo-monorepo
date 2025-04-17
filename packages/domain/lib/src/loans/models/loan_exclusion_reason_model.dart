import 'package:domain/src/_core/_core.dart';

typedef LoansExclusionReasonModels = List<LoanExclusionReasonModel>;

class LoanExclusionReasonModel extends BaseModel {
  const LoanExclusionReasonModel({
    required this.emoji,
    required this.title,
    required this.level,
    required this.subText,
    required this.name,
    required this.description,
  });

  factory LoanExclusionReasonModel.fromJson(Map<String, dynamic> json) {
    return LoanExclusionReasonModel(
      emoji: DP.asString(json['emoji']),
      title: DP.asString(json['title']),
      level: DP.asString(json['level']),
      subText: DP.asString(json['subText']),
      name: DP.asString(json['name']),
      description: DP.asString(json['description']),
    );
  }

  final String emoji;
  final String title;
  final String level;
  final String subText;
  final String name;
  final String description;

  @override
  Map<String, dynamic> toJson() {
    return {
      'emoji': emoji,
      'title': title,
      'level': level,
      'subText': subText,
      'name': name,
    };
  }

  @override
  List<Object?> get props => [
        emoji,
        title,
        level,
        subText,
        name,
        description,
      ];
}

extension LoanExclusionReasonModelDomainExtension on LoanExclusionReasonModel {}
