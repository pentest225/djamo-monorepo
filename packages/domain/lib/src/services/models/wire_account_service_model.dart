import 'package:domain/src/_core/_core.dart';

class WireAccountServiceModel extends BaseModel {
  const WireAccountServiceModel({
    required this.id,
    required this.label,
    required this.accountHolder,
    required this.iconUrl,
    required this.iban,
    required this.extras,
  });

  factory WireAccountServiceModel.fromJson(Map<String, dynamic> json) {
    return WireAccountServiceModel(
      id: DP.asString(json['id']),
      label: DP.asString(json['label']),
      accountHolder: DP.asString(json['accountHolder']),
      iconUrl: DP.asString(json['iconUrl']),
      iban: DP.asString(json['iban']),
      extras: DP.asMap(json['extras']),
    );
  }

  final String id;
  final String label;
  final String accountHolder;
  final String iconUrl;
  final String iban;
  final Map<String, dynamic> extras;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'accountHolder': accountHolder,
      'iconUrl': iconUrl,
      'iban': iban,
      'extras': extras,
    };
  }

  @override
  List<Object?> get props => [
        id,
        label,
        accountHolder,
        iconUrl,
        iban,
        extras,
      ];
}

extension WireAccountServiceModelExtension on WireAccountServiceModel {}
