import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/messaging_hub/enums/enums.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';
import 'package:uuid/uuid.dart';

typedef PushNotificationResponses = List<PushNotificationResponse>;

class PushNotificationResponse extends BaseResponse {
  @internal
  const PushNotificationResponse({
    required this.id,
    required String internalId,
    required this.messageId,
    required this.title,
    required this.body,
    required this.date,
    required this.type,
    required this.readAt,
    required this.data,
  }) : _internalId = internalId;

  factory PushNotificationResponse.fromJson(Map<String, dynamic> json) {
    return PushNotificationResponse(
      id: DP.asInt(json['id']),
      internalId: DP.asString(json['internalId']),
      messageId: DP.asString(json['messageId']),
      title: DP.asString(json['title']),
      body: DP.asString(json['body']),
      date: DP.asString(json['date']),
      type: DP.asString(json['type']),
      readAt: DP.asString(json['readAt']),
      data: DP.asMap(json['data']),
    );
  }

  factory PushNotificationResponse.fromRemoteJson(Map<String, dynamic> json) {
    final notification = DP.asMap(json['notification']);
    final sentTimeTimestamp = DP.asInt(json['sentTime']).toString();
    final subStartAt = DP.asInt(sentTimeTimestamp.length ~/ 1.75);
    final id = DP.asInt(sentTimeTimestamp.substring(subStartAt));
    final date = DateTime.fromMillisecondsSinceEpoch(DP.asInt(json['sentTime']));
    final data = DP.asMap(json['data']);
    final type = DP.asString(data['type']);
    return PushNotificationResponse(
      id: id,
      internalId: const Uuid().v4(),
      messageId: DP.asString(json['messageId']),
      title: DP.asString(notification.getOrElse('title', () => '')),
      body: DP.asString(notification.getOrElse('body', () => '')),
      date: date.toIso8601String(),
      type: type,
      readAt: '',
      data: DP.asMap(json['data']),
    );
  }

  final int id;
  final String _internalId;
  final String messageId;
  final String title;
  final String body;
  final String date;
  final String type;
  @internal
  final String readAt;
  final Map<String, dynamic> data;

  String get internalId => messageId.orNull ?? _internalId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'internalId': _internalId,
      'messageId': messageId,
      'title': title,
      'body': body,
      'date': date,
      'type': type,
      'readAt': readAt,
      'data': data,
    };
  }

  static const empty = PushNotificationResponse(
    id: 0,
    internalId: '',
    messageId: '',
    title: '',
    body: '',
    date: '',
    type: '',
    readAt: '',
    data: {},
  );

  bool get isEmpty => this == empty;

  PushNotificationResponse copyWith({
    String? readAt,
  }) {
    return PushNotificationResponse(
      id: id,
      internalId: _internalId,
      messageId: messageId,
      title: title,
      body: body,
      date: date,
      type: type,
      readAt: readAt ?? this.readAt,
      data: data,
    );
  }

  @override
  List<Object> get props => [
        id,
        _internalId,
        messageId,
        title,
        body,
        date,
        type,
        readAt,
        data,
      ];
}

extension PushNotificationResponseExtension on PushNotificationResponse {
  bool get hasBeenRead => readAt.isNotEmpty;

  bool get isSilent => title.trim().isEmpty && body.trim().isEmpty;

  NotificationTypeEnum get getType => NotificationTypeEnum.fromString(
        type.isEmpty ? data.getOrElse('notificationType', () => '').toString() : type,
      );

  String get getTransactionId => DP.asString(data.getOrElse('transactionId', () => ''));

  String get redirectionUrl => DP.asString(data.getOrElse('redirectionUrl', () => ''));

  String get getVBVCode => DP.asString(data.getOrElse('vbv', () => ''));

  String get getBusinessOTP => DP.asString(data.getOrElse('code', () => ''));
}
