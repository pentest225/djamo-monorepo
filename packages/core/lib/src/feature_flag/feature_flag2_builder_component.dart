import 'package:core/src/extensions/extensions.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class FeatureFlag2BuilderComponent extends StatelessWidget {
  factory FeatureFlag2BuilderComponent({
    required FeatureFlagEnum flag1,
    required FeatureFlagEnum flag2,
    required Widget Function(BuildContext context, FeatureFlagData data1, FeatureFlagData data2) child,
    Widget? or,
    Key? key,
  }) {
    return FeatureFlag2BuilderComponent._(
      flag1: flag1,
      flag2: flag2,
      or: or,
      key: key,
      builder: child,
    );
  }

  factory FeatureFlag2BuilderComponent.sliver({
    required FeatureFlagEnum flag1,
    required FeatureFlagEnum flag2,
    required Widget Function(BuildContext context, FeatureFlagData data1, FeatureFlagData data2) child,
    Widget? orSliver,
    Key? key,
  }) {
    return FeatureFlag2BuilderComponent._(
      flag1: flag1,
      flag2: flag2,
      or: orSliver,
      key: key,
      isSliver: true,
      builder: child,
    );
  }

  const FeatureFlag2BuilderComponent._({
    required this.flag1,
    required this.flag2,
    required this.builder,
    super.key,
    this.or,
    bool isSliver = false,
  }) : _isSliver = isSliver;

  final FeatureFlagEnum flag1;
  final FeatureFlagEnum flag2;
  final Widget Function(BuildContext context, FeatureFlagData data1, FeatureFlagData data2) builder;
  final Widget? or;
  final bool _isSliver;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FeatureFlagObject>(
      stream: store.settings.stream<FeatureFlagObject>().distinct((prev, next) => prev != next),
      initialData: flags,
      builder: (context, snapshot) {
        final f = snapshot.dataOr(FeatureFlagObject.empty);
        final isEnabled1 = f.isEnable(flag1);
        final isEnabled2 = f.isEnable(flag2);
        final data1 = f.data(flag1);
        final data2 = f.data(flag2);
        if (!isEnabled1 && !isEnabled2) {
          return or ?? (!_isSliver ? const SizedBox.shrink() : const SliverToBoxAdapter());
        }
        return builder.call(context, data1, data2);
      },
    );
  }
}
