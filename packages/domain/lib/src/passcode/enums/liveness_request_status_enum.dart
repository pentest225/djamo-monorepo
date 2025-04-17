enum LivenessRequestStatusEnum {
  pending._('pending'),
  approved._('approved'),
  rejected._('rejected'),
  ;

  const LivenessRequestStatusEnum._(this.key);

  factory LivenessRequestStatusEnum.fromString(String key) {
    return LivenessRequestStatusEnum.values.firstWhere(
      (e) => e.key == key,
      orElse: () => LivenessRequestStatusEnum.pending,
    );
  }

  final String key;
}

extension LivenessRequestStatusEnumExtension on LivenessRequestStatusEnum {
  bool get isPending => this == LivenessRequestStatusEnum.pending;
  bool get isApproved => this == LivenessRequestStatusEnum.approved;
  bool get isRejected => this == LivenessRequestStatusEnum.rejected;
}
