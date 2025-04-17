import 'package:domain/src/_core/_core.dart';

class GetPostpaidBillsPayload extends BasePayload {
  const GetPostpaidBillsPayload({
    required this.billNumberId,
    required this.billerId,
  });

  final String billNumberId;
  final String billerId;

  Map<String, dynamic> toJson() {
    return {
      'billNumberId': billNumberId,
      'billerId': billerId,
    };
  }

  @override
  List<Object?> get props => [
        billNumberId,
        billerId,
      ];
}
