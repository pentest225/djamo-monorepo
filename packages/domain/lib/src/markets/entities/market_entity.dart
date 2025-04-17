import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/entities/entities.dart';

class MarketEntity extends BaseEntity {
  const MarketEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.isoCode = emptyString,
    this.isInProspection = false,
    this.flagUrl = emptyString,
    this.currency = CurrencyEntity.empty,
    this.extras = const {},
  });

  final String id;
  final String name;
  final String isoCode;
  final bool isInProspection;
  final String flagUrl;
  final CurrencyEntity currency;
  final Map<String, dynamic> extras;

  static const empty = MarketEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        isoCode,
        isInProspection,
        flagUrl,
        currency,
        extras,
      ];
}

extension MarketEntityExtension on MarketEntity {}
