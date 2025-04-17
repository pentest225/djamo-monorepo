import 'package:domain/src/_core/_core.dart';

class LoanKycPayload extends BasePayload {
  const LoanKycPayload({
    required this.monthlyIncome,
    required this.activity,
    required this.professionalSituation,
    required this.creditTermAndConditionAccepted,
  });

  final String monthlyIncome;
  final String activity;
  final String professionalSituation;
  final bool creditTermAndConditionAccepted;

  Map<String, dynamic> toJson() {
    return {
      'monthlyIncome': monthlyIncome,
      'activity': activity,
      'professionalSituation': professionalSituation,
      'creditTermAndConditionAccepted': creditTermAndConditionAccepted,
    };
  }

  @override
  List<Object?> get props => [
        monthlyIncome,
        activity,
        professionalSituation,
        creditTermAndConditionAccepted,
      ];
}
