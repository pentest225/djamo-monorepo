import 'package:domain/src/_core/_core.dart';

class RemoteContactsResponse extends BaseResponse {
  const RemoteContactsResponse({
    required this.contacts,
  });

  factory RemoteContactsResponse.fromJson(Map<String, dynamic> json) {
    return RemoteContactsResponse(
      contacts: DP.asList(json['contacts']).map((e) {
        return e.toString();
      }).toList(),
    );
  }

  final List<String> contacts;

  @override
  Map<String, dynamic> toJson() {
    return {
      'contacts': contacts,
    };
  }

  @override
  List<Object?> get props => [
        contacts,
      ];
}

extension RemoteContactsResponseExtension on RemoteContactsResponse {}
