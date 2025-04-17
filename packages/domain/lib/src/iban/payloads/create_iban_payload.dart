import 'package:domain/src/_core/_core.dart';

class CreateIbanPayload extends BasePayload {
  const CreateIbanPayload({
    required this.monthlyIncome,
    required this.activity,
  });

  final String monthlyIncome;
  final String activity;

  Map<String, dynamic> toJson() {
    return {
      'monthlyIncome': monthlyIncome,
      'activity': activity,
    };
  }

  @override
  List<Object?> get props => [
        monthlyIncome,
        activity,
      ];
}
