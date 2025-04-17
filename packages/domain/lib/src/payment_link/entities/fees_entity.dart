import 'package:domain/src/_core/_core.dart';

class FeesEntity extends BaseEntity {
  const FeesEntity({
    this.currency = emptyString,
    this.rate = 0,
    this.value = 0,
  });

  final String currency;
  final num rate;
  final num value;

  static const empty = FeesEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        currency,
        rate,
        value,
      ];
}

extension FeesEntityDomainExtension on FeesEntity {}
