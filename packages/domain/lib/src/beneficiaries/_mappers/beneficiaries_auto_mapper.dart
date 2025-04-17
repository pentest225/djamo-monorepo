import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/beneficiaries/_mappers/beneficiaries_auto_mapper.auto_mappr.dart';
import 'package:domain/src/beneficiaries/entities/entities.dart';
import 'package:domain/src/beneficiaries/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<P2PBeneficiaryModel, P2PBeneficiaryEntity>(reverse: true),
  MapType<ClientBillAccountReferenceModel, ClientBillAccountReferenceEntity>(
    reverse: true,
  ),
  MapType<BeneficiaryModel, BeneficiaryEntity>(reverse: true),
  MapType<CashInCustomPhoneNumberModel, CashInCustomPhoneNumberEntity>(
    reverse: true,
  ),
])
class BeneficiariesAutoMapper extends $BeneficiariesAutoMapper {
  const BeneficiariesAutoMapper();
}
