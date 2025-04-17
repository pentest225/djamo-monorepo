import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/deposit/_mappers/deposit_auto_mapper.auto_mappr.dart';
import 'package:domain/src/deposit/entities/entities.dart';
import 'package:domain/src/deposit/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here

  MapType<OmValidatorModel, OmValidatorEntity>(reverse: true),
  MapType<MomoDepositModel, MomoDepositEntity>(reverse: true),
])
class DepositAutoMapper extends $DepositAutoMapper {
  const DepositAutoMapper();
}
