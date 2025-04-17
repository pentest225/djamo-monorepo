import 'package:domain/src/_core/_core.dart';

class MakeConversionPayload extends BasePayload {
  const MakeConversionPayload({
    required this.from,
    required this.to,
    required this.amount,
    required this.programName,
    required this.date,
  });

  final String from;
  final String to;
  final double amount;
  final String programName;
  final String date;

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to,
      'amount': amount,
      'programName': programName,
      'date': date,
    };
  }

  @override
  List<Object?> get props => [
        from,
        to,
        amount,
        programName,
        date,
      ];
}
