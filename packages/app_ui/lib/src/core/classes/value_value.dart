import 'package:flutter/cupertino.dart';

@immutable
final class ValueHistory<T> {
  const ValueHistory({
    required this.current,
    required this.previous,
  });

  factory ValueHistory.single(T value) {
    return ValueHistory(
      current: value,
      previous: value,
    );
  }

  final T current;
  final T previous;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValueHistory && runtimeType == other.runtimeType && current == other.current && previous == other.previous;

  @override
  int get hashCode => current.hashCode ^ previous.hashCode;
}
