import 'package:domain/src/_core/_core.dart';

class DiscountEntity extends BaseEntity {
  const DiscountEntity({
    this.id = emptyString,
    this.startDate = emptyString,
    this.endDate = emptyString,
    this.percentage = 0,
    this.cardPrice = 0,
    this.limit = 0,
    this.clientId = emptyString,
  });

  final String id;
  final String startDate;
  final String endDate;
  final int percentage;
  final int cardPrice;
  final int limit;
  final String clientId;

  static const empty = DiscountEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        startDate,
        endDate,
        percentage,
        cardPrice,
        limit,
        clientId,
      ];
}

extension DiscountEntityExtension on DiscountEntity {}
