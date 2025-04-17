import 'package:diacritic/diacritic.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

typedef PhoneNumberWorkingBookWithMarketIsoCode = Map<MarketIsoCodeEnum, PhoneNumberObjects>;
typedef PhoneNumberWorkingBook = Map<String, PhoneNumberObjects>;
typedef PhoneNumberObjects = List<PhoneNumberObject>;

class PhoneNumberObject extends Equatable {
  @internal
  const PhoneNumberObject({
    required this.id,
    required this.callingCode,
    required this.displayName,
    required this.imageUrl,
    required this.msisdn,
    required this.msisdnFormatted,
    required this.e164,
    required this.e164Formatted,
    this.isoCode = MarketIsoCodeEnum.undefined,
    this.isValid = false,
  });

  factory PhoneNumberObject.create(
    String rawNumber, {
    required MarketIsoCodeEnum marketIsoCode,
    String? id,
    String? imageUrl,
    String? displayName,
  }) {
    final isoCode = switch (marketIsoCode) {
      MarketIsoCodeEnum.civ => IsoCode.CI,
      MarketIsoCodeEnum.sen => IsoCode.SN,
      _ => null,
    };
    PhoneNumberObject defaultInvalid() => PhoneNumberObject.empty.copyWith(
          displayName: displayName ?? rawNumber,
          id: id.orNull ?? rawNumber,
          msisdn: rawNumber,
          e164: rawNumber,
          imageUrl: imageUrl,
        );
    if (isoCode == null) {
      return defaultInvalid();
    }
    try {
      const shouldValidateWithLength = bool.fromEnvironment('VALIDATE_PHONE_NUMBER_OBJECT_WITH_LENGTH');
      final p = PhoneNumber.parse(
        rawNumber,
        callerCountry: isoCode,
        destinationCountry: isoCode,
      );

      final e164 = p.international;
      final countryCode = p.countryCode;
      final formatedMsisdn = p.formatNsn();
      final formatedE164 = '+$countryCode $formatedMsisdn';
      final isValid = p.isValid() || shouldValidateWithLength && p.isValidLength();
      final name = displayName ?? formatedE164;
      return PhoneNumberObject(
        id: id.orNull ?? e164,
        callingCode: countryCode,
        displayName: name,
        imageUrl: imageUrl ?? '',
        msisdn: p.nsn,
        msisdnFormatted: formatedMsisdn,
        e164: p.international,
        e164Formatted: formatedE164,
        isoCode: marketIsoCode,
        isValid: isValid,
      );
    } catch (_) {
      return defaultInvalid();
    }
  }

  final String id;
  final String displayName;
  final String callingCode;
  final String imageUrl;
  final String msisdn;
  final String msisdnFormatted;
  final String e164;
  final String e164Formatted;
  final MarketIsoCodeEnum isoCode;
  final bool isValid;

  bool getMatch(String number) {
    return [e164, e164Formatted, msisdn, msisdnFormatted].any((e) {
      return e.replaceAll(RegExp(r'[^\d]'), '') == number.replaceAll(RegExp(r'[^\d]'), '');
    });
  }

  String get abbreviatedDisplayName {
    if (displayName.isEmpty) return '';
    return displayName.trim().split(' ').map((e) => e[0]).join().toUpperCase();
  }

  bool hasMatchWithSearchKey({
    required String key,
  }) {
    final trimmedDisplayName = removeDiacritics(displayName);
    final displayNameSplit = trimmedDisplayName.split(' ').where((e) => e.isNotEmpty).toList();
    final k = removeDiacritics(key.toLowerCase().trim());
    final startWith = [e164, e164Formatted, msisdn, msisdnFormatted, ...displayNameSplit, trimmedDisplayName].any((element) => element.toLowerCase().trim().startsWith(k));
    if (startWith) return true;
    final contains = [e164, e164Formatted, msisdn, msisdnFormatted, ...displayNameSplit, trimmedDisplayName].any((element) => element.toLowerCase().trim().contains(k));
    return contains;
  }

  String get getCountrySuffix {
    return isoCode.suffix;
  }

  static const empty = PhoneNumberObject(
    id: '',
    displayName: '',
    callingCode: '',
    imageUrl: '',
    msisdn: '',
    msisdnFormatted: '',
    e164: '',
    e164Formatted: '',
  );

  bool get isEmpty => this == empty;

  PhoneNumberObject copyWith({
    String? id,
    String? callingCode,
    String? displayName,
    String? imageUrl,
    String? msisdn,
    String? msisdnFormatted,
    String? e164,
    String? e164Formatted,
    MarketIsoCodeEnum? isoCode,
  }) {
    return PhoneNumberObject(
      id: id ?? this.id,
      callingCode: callingCode ?? this.callingCode,
      displayName: displayName ?? this.displayName,
      imageUrl: imageUrl ?? this.imageUrl,
      msisdn: msisdn ?? this.msisdn,
      msisdnFormatted: msisdnFormatted ?? this.msisdnFormatted,
      e164: e164 ?? this.e164,
      e164Formatted: e164Formatted ?? this.e164Formatted,
      isoCode: isoCode ?? this.isoCode,
    );
  }

  @override
  List<Object> get props => [
        id,
        displayName,
        callingCode,
        imageUrl,
        msisdn,
        msisdnFormatted,
        e164,
        e164Formatted,
        isoCode,
        isValid,
      ];
}
