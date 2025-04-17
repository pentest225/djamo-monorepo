import 'package:domain/src/_core/_core.dart';

class GetByIdPayload extends BasePayload {
  const GetByIdPayload({
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
