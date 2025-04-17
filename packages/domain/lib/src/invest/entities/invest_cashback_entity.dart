import 'package:domain/src/_core/_core.dart';

typedef InvestCashbackEntities = List<InvestCashbackEntity>;

class InvestCashbackEntity extends BaseEntity {
  const InvestCashbackEntity({
    this.description = emptyString,
    this.investmentProductName = emptyString,
    this.percentage = 0.0,
  });

  final String description;
  final String investmentProductName;
  final double percentage;

  static const empty = InvestCashbackEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        description,
        investmentProductName,
        percentage,
      ];
}

extension InvestCashbackEntityExtension on InvestCashbackEntity {}
