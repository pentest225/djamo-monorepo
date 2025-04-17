import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/referrals/_mappers/referrals_auto_mapper.auto_mappr.dart';
import 'package:domain/src/referrals/entities/entities.dart';
import 'package:domain/src/referrals/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<ReferralBonusModel, ReferralBonusEntity>(reverse: true),
])
class ReferralsAutoMapper extends $ReferralsAutoMapper {
  const ReferralsAutoMapper();
}
