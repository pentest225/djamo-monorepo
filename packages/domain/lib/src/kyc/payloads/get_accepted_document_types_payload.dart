import 'package:domain/src/_core/_core.dart';

class GetAcceptedDocumentTypesPayload extends BasePayload {
  const GetAcceptedDocumentTypesPayload({
    required this.countryIso,
  });

  final String countryIso;

  Map<String, dynamic> toJson() {
    return {
      'countryIso': countryIso,
    };
  }

  static const empty = GetAcceptedDocumentTypesPayload(countryIso: '');

  @override
  List<Object?> get props => [
        countryIso,
      ];
}
