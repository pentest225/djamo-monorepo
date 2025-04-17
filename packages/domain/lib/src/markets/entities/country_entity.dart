import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';

typedef CountryEntities = List<CountryEntity>;

class CountryEntity extends BaseEntity {
  const CountryEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.isoCode = emptyString,
    this.flagUrl = emptyString,
    this.msisdnLength = 0,
    this.msisdnInputMask = emptyString,
    this.callingCode = 0,
  });

  final String id;
  final String name;
  final String isoCode;
  final String flagUrl;
  final int msisdnLength;
  final String msisdnInputMask;
  final int callingCode;

  static const empty = CountryEntity(
    msisdnLength: 10,
    flagUrl: 'https://static-assets.djamo.io/icons/flags/ci.png',
    isoCode: 'ci',
    msisdnInputMask: '## ## ## ## ##',
    callingCode: 225,
    name: "Côte d'Ivoire",
  );
  bool get isEmpty => id.isEmpty;

  @override
  List<Object?> get props => [
        id,
        name,
        isoCode,
        flagUrl,
        msisdnLength,
        msisdnInputMask,
        callingCode,
      ];
}

extension CountryEntityExtension on CountryEntity {
  String get getCallingCode => '+$callingCode';

  String get getFormattedName {
    return '$name ($getCallingCode)';
  }

  bool get isSenegal => isoCode.toUpperCase() == 'SN';

  bool get isIvoryCoast => isoCode.toUpperCase() == 'CI';

  bool get isNotEmptyObject => this != CountryEntity.empty;

  MarketIsoCodeEnum get getMarketIsoCode {
    return MarketIsoCodeEnum.fromCode(isoCode);
  }

  String get getSuffix {
    return getMarketIsoCode.suffix;
  }

  String get getFormattedIso {
    return isoCode.toUpperCase();
  }

  RegExp? get phoneNumberRegex {
    if (isSenegal) {
      return RegExp(r'(^(?:[+0]221)?[0-9]{9}$)');
    }
    if (isIvoryCoast) {
      return RegExp(r'(^(?:[+0]225)?[0-9]{10}$)');
    }
    return null;
  }

  String get phoneNumberPlaceholder {
    final placeholder = msisdnInputMask.replaceAll('#', 'X');
    if (placeholder.isEmpty) return '0X XX XX XX XX';
    return '0${placeholder.substring(1, placeholder.length)}';
  }

  String get getDirectDeliveryCityName {
    if (isSenegal) {
      return 'dakar';
    }
    return 'abidjan';
  }

  String formatMsisdnToE164(String msisdn) {
    if (msisdn.isEmpty) return msisdn;
    if (msisdn.startsWith(getCallingCode)) return msisdn;
    return '$getCallingCode$msisdn';
  }

  double get getBankCashDepositStampFee {
    if (isSenegal) {
      return 200;
    }
    return 100;
  }
}
