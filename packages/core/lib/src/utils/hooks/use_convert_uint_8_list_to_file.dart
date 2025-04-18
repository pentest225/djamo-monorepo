import 'dart:io';

import 'package:core/src/utils/hooks/use_string_to_slug.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:petit_extension/petit_extension.dart';

Future<File?> useConvertUint8ListToFile({
  required Uint8List uInt8List,
  required String fileName,
  String extension = 'png',
}) async {
  try {
    final name = fileName.orNull ?? useStringToSlug('file_${DateTime.now().timestamp}');
    final directory = await getTemporaryDirectory();
    final imageFile = await File('${directory.path}/$name.$extension').create();
    await imageFile.writeAsBytes(uInt8List);
    return imageFile;
  } catch (_) {
    return null;
  }
}
