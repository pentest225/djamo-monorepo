import 'package:domain/src/_core/_core.dart';

class ChangeAccountStatusPayload extends BasePayload {
  const ChangeAccountStatusPayload({
    required this.active,
    required this.id,
  });

  final String id;
  final bool active;

  Map<String, dynamic> toJson() {
    return {
      'active': active,
    };
  }

  @override
  List<Object?> get props => [
        active,
        id,
      ];
}
