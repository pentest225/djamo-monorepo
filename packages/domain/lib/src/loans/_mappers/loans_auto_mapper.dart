import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/loans/_mappers/loans_auto_mapper.auto_mappr.dart';
import 'package:domain/src/loans/entities/entities.dart';
import 'package:domain/src/loans/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<LoanProductModel, LoanProductEntity>(reverse: true),
  MapType<LoanExclusionReasonModel, LoanExclusionReasonEntity>(reverse: true),
  MapType<LoanEligibilityModel, LoanEligibilityEntity>(reverse: true),
  MapType<LoanFeesModel, LoanFeesEntity>(reverse: true),
  MapType<LoanScoreModel, LoanScoreEntity>(reverse: true),
  MapType<LoanScoreDataModel, LoanScoreDataEntity>(reverse: true),
  MapType<LoanScoreCriteriaModel, LoanScoreCriteriaEntity>(reverse: true),
  MapType<LoanEligibilityCriteriaModel, LoanEligibilityCriteriaEntity>(
    reverse: true,
  ),
  MapType<LoanModel, LoanEntity>(reverse: true),
  MapType<LoanExtrasModel, LoanExtrasEntity>(reverse: true),
  MapType<LoanOfferModel, LoanOfferEntity>(reverse: true),
])
class LoansAutoMapper extends $LoansAutoMapper {
  const LoansAutoMapper();
}
