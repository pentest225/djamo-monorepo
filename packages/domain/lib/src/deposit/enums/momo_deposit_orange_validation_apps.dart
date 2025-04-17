enum MomoDepositOrangeValidationService {
  none,
  orangeApp,
  maxItApp,
  ussd,
}

extension MomoDepositOrangeValidationServiceExtension on MomoDepositOrangeValidationService {
  bool get isNone => this == MomoDepositOrangeValidationService.none;
  bool get isOrangeApp => this == MomoDepositOrangeValidationService.orangeApp;
  bool get isMaxItApp => this == MomoDepositOrangeValidationService.maxItApp;
  bool get isUssd => this == MomoDepositOrangeValidationService.ussd;
}
