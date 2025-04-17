import 'package:domain/src/_core/_core.dart';

class CardDetailsResponse extends BaseModel {
  const CardDetailsResponse({
    required this.cvv,
    required this.expireDate,
    required this.name,
    required this.pan,
    this.clientToken,
    this.lastRequestDate,
  });

  factory CardDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CardDetailsResponse(
      cvv: map['cvv'] as String,
      expireDate: map['expireDate'] as String,
      name: map['name'] as String,
      pan: map['pan'] as String,
      clientToken: map['clientToken'] != null ? map['clientToken'] as String : null,
      lastRequestDate: map['lastRequestDate'] != null ? DateTime.parse(map['lastRequestDate'] as String) : null,
    );
  }
  factory CardDetailsResponse.fromJson(Map<String, dynamic> map) {
    return CardDetailsResponse(
      cvv: DP.asString(map['cvv']),
      expireDate: DP.asString(map['expireDate']),
      name: DP.asString(map['name']),
      pan: DP.asString(map['pan']),
      clientToken: DP.asString(map['clientToken']),
      lastRequestDate: DP.asDateTime(map['lastRequestDate']),
    );
  }
  final String cvv;
  final String expireDate;
  final String name;
  final String pan;
  final String? clientToken;
  final DateTime? lastRequestDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'cvv': cvv,
      'expireDate': expireDate,
      'name': name,
      'pan': pan,
      'clientToken': clientToken,
      'lastRequestDate': lastRequestDate.toString(),
    };
  }

  @override
  List<Object?> get props => [
        cvv,
        expireDate,
        name,
        pan,
        clientToken,
        lastRequestDate,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cvv': cvv,
      'expireDate': expireDate,
      'name': name,
      'pan': pan,
      'clientToken': clientToken,
      'lastRequestDate': lastRequestDate.toString(),
    };
  }

  CardDetailsResponse copyWith({
    String? cvv,
    String? expireDate,
    String? name,
    String? pan,
    String? clientToken,
    DateTime? lastRequestDate,
  }) {
    return CardDetailsResponse(
      cvv: cvv ?? this.cvv,
      expireDate: expireDate ?? this.expireDate,
      name: name ?? this.name,
      pan: pan ?? this.pan,
      clientToken: clientToken ?? this.clientToken,
      lastRequestDate: lastRequestDate ?? this.lastRequestDate,
    );
  }
}
