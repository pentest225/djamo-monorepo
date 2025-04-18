import 'dart:io';
import 'dart:ui';

import 'package:path_provider/path_provider.dart';

extension PetitImageExtension on Image {
  Future<File> toFile({required String fileName, bool addTimestamp = true}) async {
    final extDir = await getTemporaryDirectory();
    final dirPath = extDir.path;
    String timestamp() => DateTime.now().millisecondsSinceEpoch.toString();
    final imageData = await toByteData(format: ImageByteFormat.png);
    final filePath = switch (addTimestamp) {
      false => '$dirPath/${fileName.replaceAll(" ", "_").trim()}.png',
      _ => '$dirPath/${fileName.replaceAll(" ", "_").trim()}_${timestamp()}.png',
    };
    return File(filePath)..writeAsBytesSync((imageData?.buffer.asUint8List())!);
  }
}
