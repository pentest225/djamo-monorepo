import 'package:domain/src/_core/_core.dart';

class DocumentEntity extends BaseEntity {
  const DocumentEntity({
    this.documentId = emptyString,
    this.documentType = emptyString,
    this.title = emptyString,
    this.accepted = false,
    this.documentPath = const [],
  });

  final String documentId;
  final String documentType;
  final String title;
  final bool accepted;
  final List<String> documentPath;

  static const empty = DocumentEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        documentId,
        documentType,
        title,
        accepted,
        documentPath,
      ];
}

extension DocumentEntityExtension on DocumentEntity {}
