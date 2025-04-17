import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/iban/iban.dart';

class IbanModel extends BaseModel {
  const IbanModel({
    required this.id,
    required this.accountNumber,
    required this.agency,
    required this.iban,
    required this.ibanKey,
    required this.clientId,
  });

  factory IbanModel.fromJson(Map<String, dynamic> json) {
    return IbanModel(
      id: DP.asString(json['id']),
      accountNumber: DP.asString(json['accountNumber']),
      agency: IbanAgencyModel.fromJson(DP.asMap(json['agency'])),
      iban: DP.asString(json['iban']),
      ibanKey: DP.asString(json['ibanKey']),
      clientId: DP.asString(json['clientId']),
    );
  }

  final String id;
  final String accountNumber;
  final IbanAgencyModel agency;
  final String iban;
  final String ibanKey;
  final String clientId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'accountNumber': accountNumber,
      'agency': agency.toJson(),
      'iban': iban,
      'ibanKey': ibanKey,
      'clientId': clientId,
    };
  }

  @override
  List<Object?> get props => [
        id,
        accountNumber,
        agency,
        iban,
        ibanKey,
        clientId,
      ];
}

extension IbanModelExtension on IbanModel {}
