import 'package:domain/src/_core/_core.dart';

class CardDetailsPayload extends BasePayload {
  const CardDetailsPayload({
    required this.useEvervault,
    required this.accountId,
  });

  final bool useEvervault;
  final String accountId;

  Map<String, dynamic> toJson() {
    return {
      'account': {'id': accountId},
    };
  }

  @override
  List<Object?> get props => [
        useEvervault,
        accountId,
      ];
}
