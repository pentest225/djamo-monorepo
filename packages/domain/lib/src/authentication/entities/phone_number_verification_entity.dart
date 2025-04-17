import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/entities/phone_number_entity.dart';

class PhoneNumberVerificationEntity extends BaseEntity {
  const PhoneNumberVerificationEntity({
    this.id = emptyString,
    this.phoneNumber = PhoneNumberEntity.empty,
    this.hasAccount = false,
    this.isClient = false,
    this.needsToChangePassCode = false,
    this.kycStatus = emptyString,
  });

  final String id;
  final PhoneNumberEntity phoneNumber;
  final bool hasAccount;
  final bool isClient;
  final bool needsToChangePassCode;
  final String kycStatus;

  static const empty = PhoneNumberVerificationEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        phoneNumber,
        hasAccount,
        isClient,
        needsToChangePassCode,
        kycStatus,
      ];
}

extension PhoneNumberVerificationEntityExtension on PhoneNumberVerificationEntity {}
