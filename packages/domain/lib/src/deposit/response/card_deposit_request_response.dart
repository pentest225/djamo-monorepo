import 'package:domain/src/_core/_core.dart';

class CardDepositRequestResponse extends BaseResponse {
  const CardDepositRequestResponse({
    required this.url,
    required this.method,
    required this.body,
  });

  factory CardDepositRequestResponse.fromJson(Map<String, dynamic> json) {
    final isOldRequest = !(json.containsKey('method') && json.containsKey('url'));
    if (isOldRequest) {
      return CardDepositRequestResponse(
        method: 'post',
        url: const String.fromEnvironment(
          'CARD_DEPOSIT_FORM_URL',
        ),
        body: json,
      );
    }
    return CardDepositRequestResponse(
      url: DP.asString(json['url']),
      method: DP.asString(json['method']),
      body: DP.asMap(json['body']),
    );
  }

  final String url;
  final String method;
  final Map<String, dynamic> body;

  @override
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'method': method,
      'body': body,
    };
  }

  static const empty = CardDepositRequestResponse(
    url: '',
    method: '',
    body: {},
  );

  @override
  List<Object?> get props => [
        url,
        method,
        body,
      ];
}

extension CardDepositRequestResponseExtension on CardDepositRequestResponse {
  bool get isGetMethod {
    return method.toUpperCase() == 'GET';
  }

  bool get isPostMethod {
    return method.toUpperCase() == 'POST';
  }

  Uri? get uri {
    if (url.isEmpty) {
      return null;
    }
    return Uri.tryParse(url);
  }

  bool get hasUri {
    return uri != null;
  }

  String genHtmlForm() {
    if (isGetMethod) {
      return '';
    }
    final inputsBuffer = StringBuffer();
    for (final e in body.entries) {
      inputsBuffer.write("<br><input type='hidden' name='${e.key}' value='${e.value}'>\n");
    }
    return """
            <form name='depositForm' action='$url' method='post'>
              $inputsBuffer
            </form>
             <script type="text/javascript">
              document.depositForm.submit();
            </script>
        """;
  }

  bool get isValidRequest {
    return method.isNotEmpty && (url.isNotEmpty || body.isNotEmpty);
  }
}
