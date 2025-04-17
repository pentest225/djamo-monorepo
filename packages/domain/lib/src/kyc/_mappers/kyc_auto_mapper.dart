import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/kyc/_mappers/kyc_auto_mapper.auto_mappr.dart';
import 'package:domain/src/kyc/entities/entities.dart';
import 'package:domain/src/kyc/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<KYCDocumentsGroupModel, KYCDocumentsGroupEntity>(reverse: true),
  MapType<KYCDocsRequiredPicsModel, KYCDocsRequiredPicsEntity>(reverse: true),
  MapType<KYCDocumentModel, KYCDocumentEntity>(reverse: true),
  MapType<KycDocumentNoticeModel, KYCDocumentNoticeEntity>(reverse: true),
])
class KycAutoMapper extends $KycAutoMapper {
  const KycAutoMapper();
}
