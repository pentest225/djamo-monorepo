import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/settings/_mappers/settings_auto_mapper.auto_mappr.dart';
import 'package:domain/src/settings/entities/entities.dart';
import 'package:domain/src/settings/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
  //##Add MapType here
  MapType<DeviceConfigModel, DeviceConfigEntity>(reverse: true),
  MapType<SettingModel, SettingEntity>(reverse: true),
])
class SettingsAutoMapper extends $SettingsAutoMapper {
  const SettingsAutoMapper();
}
