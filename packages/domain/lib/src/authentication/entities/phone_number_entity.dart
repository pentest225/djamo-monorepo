import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/entities/phone_number_kyc_entity.dart';

class PhoneNumberEntity extends BaseEntity {
  const PhoneNumberEntity({
    this.id = emptyString,
    this.createdAt = emptyString,
    this.updatedAt = emptyString,
    this.deletedAt = emptyString,
    this.isActive = false,
    this.searchableText = emptyString,
    this.msisdn = emptyString,
    this.e164 = emptyString,
    this.installationId = emptyString,
    this.deviceType = emptyString,
    this.subscribed = false,
    this.hasAccount = false,
    this.isPhysical = false,
    this.isClient = false,
    this.needsToChangePassCode = false,
    this.kyc = PhoneNumberKycEntity.empty,
  });

  final String id;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final bool isActive;
  final String searchableText;
  final String msisdn;
  final String e164;
  final String installationId;
  final String deviceType;
  final bool subscribed;
  final bool hasAccount;
  final bool isPhysical;
  final bool isClient;
  final bool needsToChangePassCode;
  final PhoneNumberKycEntity kyc;

  static const empty = PhoneNumberEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        deletedAt,
        isActive,
        searchableText,
        msisdn,
        e164,
        installationId,
        deviceType,
        subscribed,
        hasAccount,
        isPhysical,
        isClient,
        needsToChangePassCode,
        kyc,
      ];
}

extension PhoneNumberEntityExtension on PhoneNumberEntity {}
