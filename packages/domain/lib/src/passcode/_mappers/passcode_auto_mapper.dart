import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/authentication/entities/entities.dart';
import 'package:domain/src/authentication/models/models.dart';
import 'package:domain/src/passcode/_mappers/passcode_auto_mapper.auto_mappr.dart';
import 'package:domain/src/passcode/entities/entities.dart';
import 'package:domain/src/passcode/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
  //##Add MapType here
  MapType<ResetPasscodeChallengeModel, ResetPasscodeChallengeEntity>(reverse: true),
  MapType<PhoneNumberResetModel, PhoneNumberResetEntity>(reverse: true),
  MapType<PhoneNumberModel, PhoneNumberEntity>(reverse: true),
  MapType<PhoneNumberKycModel, PhoneNumberKycEntity>(reverse: true),
  MapType<LivenessResetRequestStatusModel, LivenessResetRequestStatusEntity>(reverse: true),
])
class PasscodeAutoMapper extends $PasscodeAutoMapper {
  const PasscodeAutoMapper();
}
