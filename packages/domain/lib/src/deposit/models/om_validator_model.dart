import 'package:domain/src/_core/_core.dart';

class OmValidatorModel extends BaseModel {
  const OmValidatorModel({
    required this.result,
    required this.message,
  });

  factory OmValidatorModel.fromJson(Map<String, dynamic> json) {
    return OmValidatorModel(
      result: DP.asString(json['result']),
      message: DP.asString(json['message']),
    );
  }

  final String result;
  final String message;

  @override
  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'message': message,
    };
  }

  @override
  List<Object?> get props => [
        result,
        message,
      ];
}

extension OmValidatorModelExtension on OmValidatorModel {}
