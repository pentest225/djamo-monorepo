import 'dart:ui';

import 'package:domain/domain.dart';

void useCallOnFeatureFlag({
  required FeatureFlagEnum flag,
  required void Function(FeatureFlagData data) onEnabled,
  VoidCallback? or,
}) {
  final isEnabled = flags.isEnable(flag);
  final data = flags.data(flag);
  isEnabled ? onEnabled(data) : or?.call();
}

T useReturnOnFeatureFlag<T>({
  required FeatureFlagEnum flag,
  required T Function(FeatureFlagData data) onEnabled,
  required T or,
}) {
  final isEnabled = flags.isEnable(flag);
  final data = flags.data(flag);
  return isEnabled ? onEnabled(data) : or;
}
