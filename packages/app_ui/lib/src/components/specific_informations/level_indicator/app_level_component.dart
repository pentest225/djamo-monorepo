import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppLevelComponent extends StatelessWidget {
  const AppLevelComponent({
    required this.isCompleted,
    super.key,
  });

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    final config = AssetBuilderConfig.svg(
      height: AppSizes.h.s24,
      width: AppSizes.w.s24,
    );
    if (isCompleted) {
      return AppAssetBuilder.svg(
        svg: Assets.icons.trophyOn,
        config: config,
      );
    }
    return AppAssetBuilder.svg(
      svg: Assets.icons.trophyOff,
      config: config,
    );
  }
}
