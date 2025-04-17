enum EventSourceEnum {
  remote._('remote'),
  local._('local'),
  ;

  const EventSourceEnum._(this.key);

  factory EventSourceEnum.fromKey(String key) {
    return EventSourceEnum.values.firstWhere(
      (e) {
        return e.key == key;
      },
      orElse: () => EventSourceEnum.remote,
    );
  }

  final String key;
}

extension EventSourceEnumExtension on EventSourceEnum {
  bool get isRemote => this == EventSourceEnum.remote;
  bool get isLocal => this == EventSourceEnum.local;
}
