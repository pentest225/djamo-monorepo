import 'package:domain/src/_core/_core.dart';

class EventModel extends BaseModel {
  const EventModel({
    required this.type,
    required this.subscriptionType,
    required this.source,
    required this.resourceId,
    required this.timestamp,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      type: DP.asString(json['type']),
      subscriptionType: DP.asString(json['subscriptionType']),
      source: DP.asString(json['source']),
      resourceId: DP.asString(json['resourceId']),
      timestamp: json['timestamp'] as int?,
    );
  }

  final String type;
  final String subscriptionType;
  final String source;
  final String resourceId;
  final int? timestamp;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'subscriptionType': subscriptionType,
      'source': source,
      'resourceId': resourceId,
      'timestamp': timestamp,
    };
  }

  @override
  List<Object?> get props => [
        type,
        subscriptionType,
        source,
        resourceId,
        timestamp,
      ];
}

extension EventModelExtension on EventModel {}
