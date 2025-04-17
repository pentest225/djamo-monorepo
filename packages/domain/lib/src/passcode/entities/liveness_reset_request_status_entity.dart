import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/passcode/enums/enums.dart';
import 'package:meta/meta.dart';

class LivenessResetRequestStatusEntity extends BaseEntity {
  const LivenessResetRequestStatusEntity({
    this.id = emptyString,
    this.status = emptyString,
  });

  final String id;
  @internal

  /// Prefer using [getStatus] instead
  final String status;

  static const empty = LivenessResetRequestStatusEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        status,
      ];
}

extension LivenessResetRequestStatusEntityExtension on LivenessResetRequestStatusEntity {
  LivenessRequestStatusEnum get getStatus {
    return LivenessRequestStatusEnum.fromString(status);
  }

  bool get isApproved {
    return status == 'approved';
  }
}
