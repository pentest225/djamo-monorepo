import 'package:domain/src/_core/_core.dart';

class LivenessResetRequestStatusModel extends BaseModel {
  const LivenessResetRequestStatusModel({
    required this.id,
    required this.status,
  });

  factory LivenessResetRequestStatusModel.fromJson(Map<String, dynamic> json) {
    return LivenessResetRequestStatusModel(
      id: DP.asString(json['id']),
      status: DP.asString(json['status']),
    );
  }

  final String id;
  final String status;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
    };
  }

  @override
  List<Object?> get props => [
        id,
        status,
      ];
}

extension LivenessResetRequestStatusModelExtension on LivenessResetRequestStatusModel {}
