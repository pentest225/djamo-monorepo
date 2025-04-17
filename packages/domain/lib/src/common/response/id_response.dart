import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class IDResponse extends BaseResponse {
  const IDResponse({
    this.id = emptyString,
    this.data = const {},
  });

  factory IDResponse.fromJson(Map<String, dynamic> json) {
    return IDResponse(
      id: DP.asString(json['id']),
      data: json,
    );
  }

  final String id;
  final JsonMap data;

  static const empty = IDResponse();
  bool get isEmpty => this == empty;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'data': data,
    };
  }

  @override
  List<Object?> get props => [
        id,
        data,
      ];
}

extension IDResponseDomainExtension on IDResponse {
  String get paymentLinkTransactionId => DP.asString(data.getOrElse('providerTransactionId', () => ''));

  String get paymentLinkWebRedirectionUrl => DP.asString(data.getOrElse('webRedirectionUrl', () => ''));
}
