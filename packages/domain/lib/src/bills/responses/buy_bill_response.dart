import 'package:dartx/dartx.dart';
import 'package:domain/domain.dart';

class BuyBillResponse extends BaseResponse {
  const BuyBillResponse({
    required this.id,
    required this.transactionReference,
    required Map<String, dynamic> response,
  }) : _response = response;

  factory BuyBillResponse.fromJson(Map<String, dynamic> json) {
    return BuyBillResponse(
      id: DP.asString(json['id']),
      transactionReference: DP.asString(json['transactionReference']),
      response: json,
    );
  }

  final String id;
  final String transactionReference;
  final JsonMap _response;

  JsonMap get response => _response;

  static const empty = BuyBillResponse(
    id: '',
    transactionReference: '',
    response: {},
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transactionReference': transactionReference,
      'response': _response,
    };
  }

  @override
  List<Object?> get props => [
        id,
        transactionReference,
        _response,
      ];
}

extension BuyBillResponseExtension on BuyBillResponse {}

extension type PrepaidBillerToken(JsonMap data) {
  List<String> getPrepaidToken(ServiceIdentifierEnum identifier) {
    return switch (identifier) {
      ServiceIdentifierEnum.ciePrepaid => _getCIEPREPAIDToken,
      ServiceIdentifierEnum.woyofal || ServiceIdentifierEnum.woyofal2 => _getWoyofalToken,
      _ => <String>[],
    };
  }

  List<String> get _getCIEPREPAIDToken {
    final content = DP.asMap(data['data']).getOrElse('content', JsonMap.new);
    final tokens = DP.asMap(content).getOrElse('token', () => <String>[]);
    return DP.asListOf(tokens);
  }

  List<String> get _getWoyofalToken {
    final token = DP.asMap(data['data']).getOrElse('token', () => <String>[]);
    return DP.asListOf(token);
  }
}
