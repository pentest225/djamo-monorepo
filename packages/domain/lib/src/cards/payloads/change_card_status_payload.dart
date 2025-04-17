import 'package:domain/src/_core/_core.dart';

class ChangeCardStatusPayload extends BasePayload {
  const ChangeCardStatusPayload({
    required this.active,
    required this.accountId,
  });

  final bool active;
  final String accountId;

  Map<String, dynamic> toJson() {
    return {
      'active': active,
    };
  }

  @override
  List<Object?> get props => [
        active,
        accountId,
      ];
}
