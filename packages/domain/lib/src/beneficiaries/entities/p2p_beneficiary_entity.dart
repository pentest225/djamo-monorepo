import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/_core/utils/use_full_name_abbr_capitalised.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';
import 'package:meta/meta.dart';

class P2PBeneficiaryEntity extends BaseEntity {
  const P2PBeneficiaryEntity({
    this.id = emptyString,
    this.phoneNumberE164 = emptyString,
    this.firstName = emptyString,
    this.lastName = emptyString,
    this.photo = emptyString,
    this.referralCode = emptyString,
    this.marketIsoCode = emptyString,
  });

  final String id;
  final String phoneNumberE164;
  final String firstName;
  final String lastName;
  final String photo;
  // custom field
  final String referralCode;
  @internal
  final String marketIsoCode;

  static const empty = P2PBeneficiaryEntity();
  bool get isEmpty => this == empty;

  P2PBeneficiaryEntity copyWith({
    String? referralCode,
    String? marketIsoCode,
  }) {
    return P2PBeneficiaryEntity(
      id: id,
      phoneNumberE164: phoneNumberE164,
      firstName: firstName,
      lastName: lastName,
      photo: photo,
      referralCode: referralCode ?? this.referralCode,
      marketIsoCode: marketIsoCode ?? this.marketIsoCode,
    );
  }

  @override
  List<Object?> get props => [
        id,
        phoneNumberE164,
        firstName,
        lastName,
        photo,
        referralCode,
        marketIsoCode,
      ];
}

extension P2PBeneficiaryEntityDomainExtension on P2PBeneficiaryEntity {
  MarketIsoCodeEnum get getMarketIsoCode => MarketIsoCodeEnum.fromCode(marketIsoCode);
  String get fullNameAbbr {
    return useFullNameAbbrCapitalised(
      lastName: lastName,
      firstName: firstName,
    );
  }
}
