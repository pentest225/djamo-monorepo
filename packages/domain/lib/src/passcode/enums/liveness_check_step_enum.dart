enum LivenessCheckStepEnum {
  selfie,
  challenge;
}

extension LivenessCheckStepEnumExtension on LivenessCheckStepEnum {
  bool get isSelfie => this == LivenessCheckStepEnum.selfie;
  bool get isChallenge => this == LivenessCheckStepEnum.challenge;
}
