import 'dart:developer' as dev;

extension CoreObjectExtension on Object? {
  void log() {
    dev.log(toString());
  }
}
