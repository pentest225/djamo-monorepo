import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/vaults/_mappers/vaults_auto_mapper.auto_mappr.dart';
import 'package:domain/src/vaults/entities/entities.dart';
import 'package:domain/src/vaults/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<VaultSavingProductModel, VaultSavingProductEntity>(reverse: true),
  MapType<ChallengeModel, ChallengeEntity>(reverse: true),
  MapType<ClientChallengesModel, ClientChallengesEntity>(reverse: true),
  MapType<VaultModel, VaultEntity>(reverse: true),
])
class VaultsAutoMapper extends $VaultsAutoMapper {
  const VaultsAutoMapper();
}
