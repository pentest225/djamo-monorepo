import 'package:domain/src/_core/_core.dart';

class LoanDisbursementPayload extends BasePayload {
  const LoanDisbursementPayload({
    required this.loanId,
    required this.primaryAccountId,
  });

  final String loanId;
  final String primaryAccountId;

  Map<String, dynamic> toJson() {
    return {
      'loanId': loanId,
      'primaryAccountId': primaryAccountId,
    };
  }

  @override
  List<Object?> get props => [
        loanId,
        primaryAccountId,
      ];
}
