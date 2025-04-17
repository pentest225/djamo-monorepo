enum MomoDepositWorkFlowEnums {
  none(key: 'none'),
  otp(key: 'otp'),
  redirect(key: 'redirection');

  const MomoDepositWorkFlowEnums({
    required this.key,
  });

  final String key;

  String get name => key;
}

extension MomoDepositWorkFlowEnumsExtension on MomoDepositWorkFlowEnums {
  bool get isNone => this == MomoDepositWorkFlowEnums.none;
  bool get isOtp => this == MomoDepositWorkFlowEnums.otp;
  bool get isRedirect => this == MomoDepositWorkFlowEnums.redirect;
}
