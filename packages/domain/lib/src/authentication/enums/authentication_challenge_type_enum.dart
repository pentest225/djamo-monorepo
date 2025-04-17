enum AuthenticationChallengeTypeEnum {
  sms._('sms'),
  email._('email'),
  liveness._('liveness');

  const AuthenticationChallengeTypeEnum._(this.identifier);

  factory AuthenticationChallengeTypeEnum.fromIdentifier(String identifier) {
    return values.firstWhere(
      (e) => e.identifier == identifier,
      orElse: () => sms,
    );
  }

  final String identifier;
}

extension AuthenticationChallengeTypeEnumDomainExtension on AuthenticationChallengeTypeEnum {
  bool get isSms => this == AuthenticationChallengeTypeEnum.sms;
  bool get isEmail => this == AuthenticationChallengeTypeEnum.email;
  bool get isLiveness => this == AuthenticationChallengeTypeEnum.liveness;
}
