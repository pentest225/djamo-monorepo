import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/authentication/_mappers/authentication_auto_mapper.auto_mappr.dart';
import 'package:domain/src/authentication/entities/entities.dart';
import 'package:domain/src/authentication/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
  //##Add MapType here
  MapType<PhoneNumberVerificationModel, PhoneNumberVerificationEntity>(
    reverse: true,
  ),
  MapType<PhoneNumberModel, PhoneNumberEntity>(reverse: true),
  MapType<PhoneNumberKycModel, PhoneNumberKycEntity>(reverse: true),
  MapType<ProfileIdModel, ProfileIdEntity>(reverse: true),
  MapType<UserModel, UserEntity>(reverse: true),
  MapType<GiveawayModel, GiveawayEntity>(reverse: true),
  MapType<GiveawayItemModel, GiveawayItemEntity>(reverse: true),
])
class AuthenticationAutoMapper extends $AuthenticationAutoMapper {
  const AuthenticationAutoMapper();
}
