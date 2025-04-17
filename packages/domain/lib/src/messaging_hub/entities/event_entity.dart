import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/messaging_hub/enums/enums.dart';
import 'package:meta/meta.dart';

class EventEntity extends BaseEntity {
  const EventEntity({
    this.type = emptyString,
    this.subscriptionType = emptyString,
    this.source = emptyString,
    this.resourceId = emptyString,
    this.data = const <String, dynamic>{},
    this.timestamp,
  });

  //local
  factory EventEntity.local({
    required EventTypeEnum type,
    EventSubscriptionTypeEnum subscriptionType = EventSubscriptionTypeEnum.client,
    String? resourceId,
    JsonMap data = const {},
  }) {
    return EventEntity(
      type: type.key,
      subscriptionType: subscriptionType.key,
      source: EventSourceEnum.local.key,
      resourceId: resourceId ?? '',
      data: data,
      timestamp: DateTime.now().millisecondsSinceEpoch,
    );
  }

  @internal

  ///Use [getType] instead
  final String type;
  @internal
  final String subscriptionType;
  @internal
  final String source;
  final String resourceId;
  final JsonMap data;
  final int? timestamp;

  double get getBalance => DP.asDouble(data['balance']);

  static const empty = EventEntity();
  bool get isEmpty => this == empty;

  EventEntity copyWith({
    String? type,
    String? subscriptionType,
    String? source,
    String? resourceId,
    JsonMap? data,
    int? timestamp,
  }) {
    return EventEntity(
      type: type ?? this.type,
      subscriptionType: subscriptionType ?? this.subscriptionType,
      source: source ?? this.source,
      resourceId: resourceId ?? this.resourceId,
      data: data ?? this.data,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  List<Object?> get props => [
        type,
        subscriptionType,
        source,
        resourceId,
        data,
        timestamp,
      ];
}

extension EventEntityExtension on EventEntity {
  EventSourceEnum get getSource => EventSourceEnum.fromKey(source);
  EventTypeEnum get getType => EventTypeEnum.fromKey(type);
  EventSubscriptionTypeEnum get getSubscriptionType => EventSubscriptionTypeEnum.fromKey(subscriptionType);
}
