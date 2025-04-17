import 'package:domain/src/_core/_core.dart';

class GetEntityByIdPayload extends BasePayload {
  const GetEntityByIdPayload({
    required this.id,
  });

  final String id;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }

  @override
  List<Object?> get props => [
        id,
      ];
}
