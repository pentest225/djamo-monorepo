import 'package:domain/src/_core/_core.dart';

typedef DocumentModels = List<DocumentModel>;

class DocumentModel extends BaseModel {
  const DocumentModel({
    required this.documentId,
    required this.documentType,
    required this.title,
    required this.accepted,
    required this.documentPath,
  });

  factory DocumentModel.fromJson(Map<String, dynamic> json) {
    return DocumentModel(
      documentId: DP.asString(json['documentId']),
      documentType: DP.asString(json['documentType']),
      title: DP.asString(json['title']),
      accepted: DP.asBool(json['accepted']),
      documentPath: DP.asListOf(json['documentPath']),
    );
  }

  final String documentId;
  final String documentType;
  final String title;
  final bool accepted;
  final List<String> documentPath;

  @override
  Map<String, dynamic> toJson() {
    return {
      'documentId': documentId,
      'documentType': documentType,
      'title': title,
      'accepted': accepted,
      'documentPath': documentPath,
    };
  }

  @override
  List<Object?> get props => [
        documentId,
        documentType,
        title,
        accepted,
        documentPath,
      ];
}

extension DocumentModelExtension on DocumentModel {}
