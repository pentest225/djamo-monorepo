import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/markets/enums/market_iso_code_enum.dart';
import 'package:domain/src/me/enums/qr_code_type_enum.dart';

typedef DecodeQrCodeResponseWorkingBook = Map<String, DecodeQrCodeResponse>;

class DecodeQrCodeResponse extends BaseResponse {
  const DecodeQrCodeResponse({
    required this.type,
    required Map<String, dynamic> data,
  }) : _data = data;

  factory DecodeQrCodeResponse.unknown() {
    return DecodeQrCodeResponse.empty;
  }

  factory DecodeQrCodeResponse.user({
    required String referralCode,
    required String market,
  }) {
    return DecodeQrCodeResponse(
      type: QrCodeTypeEnum.user,
      data: {
        'referralCode': referralCode,
        'market': market,
      },
    );
  }

  factory DecodeQrCodeResponse.paymentLink({
    required String orderId,
    required double amount,
    required String chargeId,
  }) {
    return DecodeQrCodeResponse(
      type: QrCodeTypeEnum.paymentLink,
      data: {
        'orderId': orderId,
        'amount': amount,
        'chargeId': chargeId,
      },
    );
  }

  factory DecodeQrCodeResponse.fromJson(Map<String, dynamic> json) {
    return DecodeQrCodeResponse(
      type: QrCodeTypeEnum.values.elementAt(DP.asInt(json['type'])),
      data: DP.asMap(json['data']),
    );
  }

  final QrCodeTypeEnum type;
  final Map<String, dynamic> _data;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.index,
      'data': _data,
    };
  }

  static const empty = DecodeQrCodeResponse(
    type: QrCodeTypeEnum.unknown,
    data: {},
  );
  @override
  List<Object?> get props => [
        type,
        _data,
      ];
}

extension DecodeQrCodeResponseDomainExtension on DecodeQrCodeResponse {
  bool get isUnknown => type.isUnknown;
  bool get isUser => type.isUser;
  bool get isPaymentLink => type.isPaymentLink;

  String get getUserReferralCode => DP.asString(_data['referralCode']);

  MarketIsoCodeEnum get getUserMarket {
    final code = DP.asString(_data['market']);
    return MarketIsoCodeEnum.fromCode(code);
  }

  String get paymentLinkOrderId => DP.asString(_data['orderId']);

  double get paymentLinkAmount => DP.asDouble(_data['amount']);

  String get paymentLinkChargeId => DP.asString(_data['chargeId']);
}
