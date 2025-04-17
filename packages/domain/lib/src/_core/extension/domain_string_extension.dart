import 'package:dartx/dartx.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';
import 'package:meta/meta.dart';

/// DomainStringExtension
extension DomainStringX on String? {
  @internal
  String get getServiceIdentifierGroup {
    final i = this ?? '';
    if (i.isEmpty) return '';
    final hasKnownCountryCode = MarketIsoCodeEnum.values.any((e) => i.contains(e.alpha3) || i.contains(e.alpha2));
    if (!hasKnownCountryCode) {
      return i;
    }
    final s = i.split('_');
    if (s.isEmpty) return i;
    return s.takeFirst(s.length - 1).join('_');
  }
}
