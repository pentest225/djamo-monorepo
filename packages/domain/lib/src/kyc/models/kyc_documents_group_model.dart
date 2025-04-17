import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/kyc/models/kyc_document_model.dart';

class KYCDocumentsGroupModel extends BaseModel {
  const KYCDocumentsGroupModel({
    required this.current,
    required this.otherCountries,
  });

  factory KYCDocumentsGroupModel.fromJson(Map<String, dynamic> json) {
    KYCDocumentModels decode(dynamic items) {
      return DP.asListOf<JsonMap>(items).map(KYCDocumentModel.fromJson).toList();
    }

    return KYCDocumentsGroupModel(
      current: decode(json['current']),
      otherCountries: decode(json['otherCountries']),
    );
  }

  final KYCDocumentModels current;
  final KYCDocumentModels otherCountries;

  @override
  Map<String, dynamic> toJson() {
    return {
      'current': current.map((e) => e.toJson()).toList(),
      'otherCountries': otherCountries.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        current,
        otherCountries,
      ];
}

extension KycDocumentsGroupModelDomainExtension on KYCDocumentsGroupModel {}
