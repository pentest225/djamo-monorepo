import 'package:domain/src/_core/_core.dart';

class CurrencyEntity extends BaseEntity {
  const CurrencyEntity({
    this.name = emptyString,
    this.isoCode = emptyString,
    this.formatting = emptyString,
    this.symbol = emptyString,
  });

  final String name;
  final String isoCode;
  final String formatting;
  final String symbol;

  static const empty = CurrencyEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        name,
        isoCode,
        formatting,
        symbol,
      ];
}

extension CurrencyEntityExtension on CurrencyEntity {}
