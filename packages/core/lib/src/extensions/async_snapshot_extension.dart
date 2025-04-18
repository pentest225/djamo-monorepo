import 'package:flutter/widgets.dart';

extension AsyncSnapshotX<T> on AsyncSnapshot<T> {
  T dataOr(T defaultValue) {
    if (hasData) {
      return requireData;
    }
    return defaultValue;
  }
}
