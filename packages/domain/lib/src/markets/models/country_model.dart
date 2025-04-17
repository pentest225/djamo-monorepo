import 'package:domain/src/_core/_core.dart';

typedef CountryModels = List<CountryModel>;

class CountryModel extends BaseModel {
  const CountryModel({
    required this.id,
    required this.name,
    required this.isoCode,
    required this.flagUrl,
    required this.msisdnLength,
    required this.msisdnInputMask,
    required this.callingCode,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      isoCode: DP.asString(json['isoCode']),
      flagUrl: DP.asString(json['flagUrl']),
      msisdnLength: DP.asInt(json['msisdnLength']),
      msisdnInputMask: DP.asString(json['msisdnInputMask']),
      callingCode: DP.asInt(json['callingCode']),
    );
  }

  final String id;
  final String name;
  final String isoCode;
  final String flagUrl;
  final int msisdnLength;
  final String msisdnInputMask;
  final int callingCode;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isoCode': isoCode,
      'flagUrl': flagUrl,
      'msisdnLength': msisdnLength,
      'msisdnInputMask': msisdnInputMask,
      'callingCode': callingCode,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        isoCode,
        flagUrl,
        msisdnLength,
        msisdnInputMask,
        callingCode,
      ];
}

extension CountryModelExtension on CountryModel {}
