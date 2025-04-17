import 'package:domain/src/_core/_core.dart';

typedef BeneficiaryModels = List<BeneficiaryModel>;

class BeneficiaryModel extends BaseModel {
  const BeneficiaryModel({
    required this.id,
    required this.clientId,
    required this.serviceId,
    required this.label,
    required this.isFavorite,
    required this.recipient,
    required this.iban,
  });

  factory BeneficiaryModel.fromJson(Map<String, dynamic> json) {
    return BeneficiaryModel(
      id: DP.asString(json['id']),
      clientId: DP.asString(json['clientId']),
      serviceId: DP.asString(json['serviceId']),
      label: DP.asString(json['label']),
      isFavorite: DP.asBool(json['isFavorite']),
      recipient: DP.asString(json['recipient']),
      iban: DP.asString(json['iban']),
    );
  }

  final String id;
  final String clientId;
  final String serviceId;
  final String label;
  final bool isFavorite;
  final String recipient;
  final String iban;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'clientId': clientId,
      'serviceId': serviceId,
      'label': label,
      'isFavorite': isFavorite,
      'recipient': recipient,
      'iban': iban,
    };
  }

  @override
  List<Object?> get props => [
        id,
        clientId,
        serviceId,
        label,
        isFavorite,
        recipient,
        iban,
      ];
}

extension BeneficiaryModelExtension on BeneficiaryModel {}
