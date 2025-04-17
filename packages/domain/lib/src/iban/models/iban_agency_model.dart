import 'package:domain/src/_core/_core.dart';

class IbanAgencyModel extends BaseModel {
  const IbanAgencyModel({
    required this.code,
    required this.libelle,
  });

  factory IbanAgencyModel.fromJson(Map<String, dynamic> json) {
    return IbanAgencyModel(
      code: DP.asString(json['code']),
      libelle: DP.asString(json['libelle']),
    );
  }

  final String code;
  final String libelle;

  @override
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'libelle': libelle,
    };
  }

  @override
  List<Object?> get props => [
        code,
        libelle,
      ];
}

extension IbanAgencyModelExtension on IbanAgencyModel {}
