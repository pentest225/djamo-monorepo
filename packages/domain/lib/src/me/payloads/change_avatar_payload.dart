import 'dart:io';

import 'package:domain/domain.dart';

class ChangeAvatarPayload extends BasePayload {
  const ChangeAvatarPayload({
    required this.image,
  });

  final File image;

  Map<String, dynamic> toJson() {
    return {
      'image': image,
    };
  }

  @override
  List<Object> get props => [image];
}
