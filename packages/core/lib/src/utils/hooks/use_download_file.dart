import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

/// This hooks [useDownloadFile] is used to download a file from a
/// specified URL and save it to the application documents directory.
/// It returns the path of the downloaded file.
/// The function takes four parameters: [fileUrl] (required),
/// [localFileName] (optional), [headers] (optional), and [body] (optional).
/// If no [localFileName] is passed, one is found using the [fileUrl]
/// If no [body] is passed, request is made using GET, else, using POST
Future<String?> useDownloadFile({
  required String fileUrl,
  String? localFileName,
  Map<String, String?>? headers,
  Map<String, String?>? body,
}) async {
  final dio = Dio();
  final dir = await getApplicationDocumentsDirectory();
  final fileName = localFileName ?? fileUrl.substring(fileUrl.lastIndexOf('/') + 1);
  final downloadedFilePath = '${dir.path}/$fileName';

  final hasBody = body != null && body.isNotEmpty;
  await dio.download(
    fileUrl,
    downloadedFilePath,
    options: Options(
      headers: headers,
      method: hasBody ? 'POST' : 'GET',
    ),
    data: hasBody ? jsonEncode(body) : null,
  );
  final file = File(downloadedFilePath);
  if (!file.existsSync()) {
    throw Exception('Failed to download file');
  }
  return downloadedFilePath;
}
