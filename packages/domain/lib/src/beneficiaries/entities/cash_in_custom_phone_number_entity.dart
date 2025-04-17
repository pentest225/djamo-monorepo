import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/beneficiaries/objects/objects.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';

typedef CashInCustomPhoneNumberEntities = List<CashInCustomPhoneNumberEntity>;
typedef CashInCustomPhoneNumberWorkingBook = Map<String, CashInCustomPhoneNumberEntity>;

class CashInCustomPhoneNumberEntity extends BaseEntity {
  const CashInCustomPhoneNumberEntity({
    this.id = emptyString,
    this.msisdn = emptyString,
    this.isActive = false,
    this.isVerified = false,
    this.isLocked = false,
  });

  final String id;
  final String msisdn;
  final bool isActive;
  final bool isVerified;
  final bool isLocked;
  //custom field
  PhoneNumberObject phoneNumber(MarketIsoCodeEnum marketIsoCode) {
    return PhoneNumberObject.create(
      msisdn,
      displayName: msisdn,
      id: id,
      marketIsoCode: marketIsoCode,
    );
  }

  static const empty = CashInCustomPhoneNumberEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        msisdn,
        isActive,
        isVerified,
        isLocked,
      ];
}

extension CashInCustomPhoneNumberEntityExtension on CashInCustomPhoneNumberEntity {}
