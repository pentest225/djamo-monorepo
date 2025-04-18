import 'package:share_plus/share_plus.dart';

Future<bool> useShare({
  String? subject,
  String? text,
  List<String> files = const [],
}) {
  if (files.isNotEmpty) {
    final filesX = files.map((e) {
      return XFile(e);
    }).toList();
    return Share.shareXFiles(
      filesX,
      text: text,
      subject: subject,
    ).then((e) {
      return true;
    });
  }
  return Share.share(
    text ?? '',
    subject: subject,
  ).then(
    (e) {
      return true;
    },
  );
}
