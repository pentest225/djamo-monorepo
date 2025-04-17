import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/kyc/entities/kyc_document_entity.dart';

class KYCDocumentsGroupEntity extends BaseEntity {
  const KYCDocumentsGroupEntity({
    this.current = const [],
    this.otherCountries = const [],
  });

  final KYCDocumentEntities current;
  final KYCDocumentEntities otherCountries;

  static const empty = KYCDocumentsGroupEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        current,
        otherCountries,
      ];
}

extension KycDocumentsGroupEntityDomainExtension on KYCDocumentsGroupEntity {}
