import 'package:core/src/extensions/extensions.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class FeatureFlagBuilderComponent extends StatelessWidget {
  factory FeatureFlagBuilderComponent({
    required FeatureFlagEnum flag,
    required Widget Function(BuildContext context, FeatureFlagData data) child,
    Widget? or,
    Key? key,
  }) {
    return FeatureFlagBuilderComponent._(
      flag: flag,
      or: or,
      key: key,
      builder: child,
    );
  }

  factory FeatureFlagBuilderComponent.sliver({
    required FeatureFlagEnum flag,
    required Widget Function(BuildContext context, FeatureFlagData data) child,
    Widget? orSliver,
    Key? key,
  }) {
    return FeatureFlagBuilderComponent._(
      flag: flag,
      or: orSliver,
      key: key,
      isSliver: true,
      builder: child,
    );
  }

  const FeatureFlagBuilderComponent._({
    required this.flag,
    required this.builder,
    super.key,
    this.or,
    bool isSliver = false,
  }) : _isSliver = isSliver;

  final FeatureFlagEnum flag;
  final Widget Function(BuildContext context, FeatureFlagData data) builder;
  final Widget? or;
  final bool _isSliver;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FeatureFlagObject>(
      stream: store.settings.stream<FeatureFlagObject>().distinct((prev, next) => prev != next),
      initialData: flags,
      builder: (context, snapshot) {
        final f = snapshot.dataOr(FeatureFlagObject.empty);
        final isEnabled = f.isEnable(flag);
        final data = f.data(flag);
        if (!isEnabled) return or ?? (!_isSliver ? const SizedBox.shrink() : const SliverToBoxAdapter());
        return builder.call(context, data);
      },
    );
  }
}
