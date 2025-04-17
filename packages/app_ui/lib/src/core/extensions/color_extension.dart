import 'package:flutter/painting.dart';

extension ColorX on Color? {
  ColorFilter? toSrcMode() {
    if (this == null) return null;
    return ColorFilter.mode(this!, BlendMode.srcIn);
  }

  bool get isNearLight => this != null && this!.computeLuminance() > 0.5;
}
