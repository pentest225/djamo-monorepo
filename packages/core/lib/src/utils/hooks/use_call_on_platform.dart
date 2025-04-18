import 'dart:io';

void useCallOnPlatform({
  required void Function() onAndroid,
  required void Function() onIOS,
}) {
  if (Platform.isAndroid) {
    onAndroid();
  }
  if (Platform.isIOS) {
    onIOS();
  }
}
