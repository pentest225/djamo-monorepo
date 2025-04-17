import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/kyc/models/kyc_docs_required_pics_model.dart';

typedef KYCDocumentModels = List<KYCDocumentModel>;

class KYCDocumentModel extends BaseModel {
  const KYCDocumentModel({
    required this.id,
    required this.name,
    required this.requiredPics,
  });

  factory KYCDocumentModel.fromJson(Map<String, dynamic> json) {
    return KYCDocumentModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      requiredPics: DP.asListOf<JsonMap>(json['requiredPics']).map(KYCDocsRequiredPicsModel.fromJson).toList(),
    );
  }

  final String id;
  final String name;
  final KYCDocsRequiredPicsModels requiredPics;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'requiredPics': requiredPics.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        requiredPics,
      ];
}

extension KYCDocumentModelExtension on KYCDocumentModel {}
