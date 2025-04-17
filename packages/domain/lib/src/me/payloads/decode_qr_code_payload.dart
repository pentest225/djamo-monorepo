import 'package:domain/src/_core/_core.dart';

class DecodeQrCodePayload extends BasePayload {
  const DecodeQrCodePayload({
    required this.data,
  });

  final String data;

  Map<String, dynamic> toJson() {
    return {
      'data': data,
    };
  }

  @override
  List<Object?> get props => [
        data,
      ];
}
