import 'dart:io';

import 'package:url_launcher/url_launcher_string.dart';

/// Use this hook to launch a dial code like *111#.
Future<bool> useLaunchDialCode({
  required String dialCode,
}) async {
  final url = Platform.isIOS ? 'tel://${Uri.encodeComponent(dialCode)}' : 'tel:${Uri.encodeComponent(dialCode)}';

  //final url = 'tel:${Uri.encodeComponent(dialCode)}';
  return launchUrlString(
    url,
    mode: LaunchMode.externalApplication,
  ).catchError((e) => false);
}
