import 'package:domain/src/_core/_core.dart';

typedef KYCDocsRequiredPicsModels = List<KYCDocsRequiredPicsModel>;

class KYCDocsRequiredPicsModel extends BaseModel {
  const KYCDocsRequiredPicsModel({
    required this.id,
    required this.name,
    required this.hintTitle,
    required this.hintText,
    required this.subHintText,
    required this.needDetection,
    required this.format,
  });

  factory KYCDocsRequiredPicsModel.fromJson(Map<String, dynamic> json) {
    return KYCDocsRequiredPicsModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      hintTitle: DP.asString(json['hintTitle']),
      hintText: DP.asString(json['hintText']),
      subHintText: DP.asString(json['subHintText']),
      needDetection: DP.asBool(json['needDetection']),
      format: DP.asDouble(json['format']),
    );
  }

  final String id;
  final String name;
  final String hintTitle;
  final String hintText;
  final String subHintText;
  final bool needDetection;
  final double format;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'hintTitle': hintTitle,
      'hintText': hintText,
      'subHintText': subHintText,
      'needDetection': needDetection,
      'format': format,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        hintTitle,
        hintText,
        subHintText,
        needDetection,
        format,
      ];
}

extension KycDocsRequiredPicsModelDomainExtension on KYCDocsRequiredPicsModel {}
