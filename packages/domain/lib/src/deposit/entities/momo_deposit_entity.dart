import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class MomoDepositEntity extends BaseEntity {
  const MomoDepositEntity({
    this.id = emptyString,
    this.maxItPaymentUrl = emptyString,
    this.paymentUrl = emptyString,
  });

  final String id;
  final String maxItPaymentUrl;
  final String paymentUrl;

  static const empty = MomoDepositEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        maxItPaymentUrl,
        paymentUrl,
      ];
}

extension MomoDepositEntityExtension on MomoDepositEntity {
  bool get hasPaymentUrl => paymentUrl.isValidUrl;

  Uri? get paymentUri => Uri.tryParse(paymentUrl);
}
