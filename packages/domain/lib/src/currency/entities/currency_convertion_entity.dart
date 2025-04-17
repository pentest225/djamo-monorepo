import 'package:domain/domain.dart';

typedef CurrencyConvertionEntities = List<CurrencyConvertionEntity>;

class CurrencyConvertionEntity extends BaseEntity {
  const CurrencyConvertionEntity({
    this.imageUrl = emptyString,
    this.isoCode = emptyString,
    this.name = emptyString,
    this.percentage = emptyString,
  });

  final String imageUrl;
  final String isoCode;
  final String name;
  final String percentage;

  static const empty = CurrencyConvertionEntity();
  bool get isEmpty => this == empty;

  bool hasMatchWithSearchKey(String key) {
    final normalizedKey = key.toLowerCase().trim();
    return name.toLowerCase().trim().startsWith(normalizedKey) ||
        name.toLowerCase().trim().contains(normalizedKey) ||
        isoCode.toLowerCase().trim().startsWith(normalizedKey) ||
        isoCode.toLowerCase().trim().contains(normalizedKey);
  }

  @override
  List<Object?> get props => [
        imageUrl,
        isoCode,
        name,
        percentage,
      ];
}

extension CurrencyConvertionEntityDomainExtension on CurrencyConvertionEntity {}
