import 'package:domain/src/_core/_core.dart';

class CreatePhoneNumberResponse extends BaseResponse {
  const CreatePhoneNumberResponse({
    required this.id,
    required this.created,
    required this.updated,
    required this.msisdn,
    required this.e164,
    this.isAlreadyRegistered = false,
  });

  factory CreatePhoneNumberResponse.fromJson(Map<String, dynamic> json) {
    return CreatePhoneNumberResponse(
      id: DP.asString(json['id']),
      created: DP.asString(json['created']),
      updated: DP.asString(json['updated']),
      msisdn: DP.asString(json['msisdn']),
      e164: DP.asString(json['e164']),
    );
  }

  final String id;
  final String created;
  final String updated;
  final String msisdn;
  final String e164;
  //custom field
  final bool isAlreadyRegistered;

  CreatePhoneNumberResponse copyWith({
    bool? isAlreadyRegistered,
  }) {
    return CreatePhoneNumberResponse(
      id: id,
      created: created,
      updated: updated,
      msisdn: msisdn,
      e164: e164,
      isAlreadyRegistered: isAlreadyRegistered ?? this.isAlreadyRegistered,
    );
  }

  static const empty = CreatePhoneNumberResponse(
    id: '',
    created: '',
    updated: '',
    msisdn: '',
    e164: '',
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created': created,
      'updated': updated,
      'msisdn': msisdn,
      'e164': e164,
    };
  }

  @override
  List<Object?> get props => [
        id,
        created,
        updated,
        msisdn,
        e164,
      ];
}

extension CreatePhoneNumberResponseDomainExtension on CreatePhoneNumberResponse {}
