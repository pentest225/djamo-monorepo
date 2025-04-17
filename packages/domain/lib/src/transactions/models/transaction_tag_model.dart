import 'package:domain/src/_core/_core.dart';

class TransactionTagModel extends BaseModel {
  const TransactionTagModel({
    required this.label,
    required this.bgColor,
    required this.textColor,
  });

  factory TransactionTagModel.fromJson(Map<String, dynamic> json) {
    return TransactionTagModel(
      label: DP.asString(json['label']),
      bgColor: DP.asString(json['bgColor']),
      textColor: DP.asString(json['textColor']),
    );
  }

  final String label;
  final String bgColor;
  final String textColor;

  @override
  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'bgColor': bgColor,
      'textColor': textColor,
    };
  }

  @override
  List<Object?> get props => [
        label,
        bgColor,
        textColor,
      ];
}

extension TransactionTagModelExtension on TransactionTagModel {}
