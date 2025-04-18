import 'package:url_launcher/url_launcher_string.dart';

/// Use this hook to launch an external URL.
Future<bool> useLaunchExternalUrl(String url) {
  return launchUrlString(
    Uri.encodeFull(url),
    mode: LaunchMode.externalApplication,
  ).catchError(
    (_) => false,
  );
}
