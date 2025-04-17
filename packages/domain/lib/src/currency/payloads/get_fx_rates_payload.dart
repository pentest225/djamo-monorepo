import 'package:domain/src/_core/_core.dart';

class GetFxRatesPayload extends BasePayload {
  const GetFxRatesPayload({
    required this.programName,
    required this.date,
  });

  final String programName;
  final String date;

  Map<String, dynamic> toJson() {
    return {
      'programName': programName,
      'date': date,
    };
  }

  @override
  List<Object?> get props => [
        programName,
        date,
      ];
}
