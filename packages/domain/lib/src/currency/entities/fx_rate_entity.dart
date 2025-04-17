import 'package:domain/src/_core/_core.dart';

typedef FxRateEntites = List<FxRateEntity>;

class FxRateEntity extends BaseEntity {
  const FxRateEntity({
    this.from = emptyString,
    this.to = emptyString,
    this.rate = 0,
  });

  final String from;
  final String to;
  final double rate;

  static const empty = FxRateEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        from,
        to,
        rate,
      ];
}

extension FxRateEntityDomainExtension on FxRateEntity {}
