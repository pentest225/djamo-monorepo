import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/kyc/entities/kyc_docs_required_pics_entity.dart';

typedef KYCDocumentEntities = List<KYCDocumentEntity>;

class KYCDocumentEntity extends BaseEntity {
  const KYCDocumentEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.requiredPics = const [],
  });

  final String id;
  final String name;
  final KYCDocsRequiredPicsEntities requiredPics;

  static const empty = KYCDocumentEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        requiredPics,
      ];
}

extension KycDocumentEntityExtension on KYCDocumentEntity {}
