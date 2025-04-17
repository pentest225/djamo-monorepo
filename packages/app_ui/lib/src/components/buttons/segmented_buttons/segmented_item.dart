import 'package:app_ui/src/core/classes/classes.dart';

class SegmentItem<T> {
  const SegmentItem({
    required this.value,
    this.label,
    this.icon,
    this.enabled = true,
  });
  final T value;
  final String? label;
  final AppAssetBuilder? icon;
  final bool enabled;
}
