import 'package:domain/src/_core/_core.dart';

class GetTransactionsByAccountIdPayload extends BasePayload {
  const GetTransactionsByAccountIdPayload({
    required this.accountId,
  });

  final String accountId;

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
    };
  }

  @override
  List<Object?> get props => [
        accountId,
      ];
}
