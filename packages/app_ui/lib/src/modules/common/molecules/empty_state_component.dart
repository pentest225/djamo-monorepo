import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class EmptyStateComponent extends StatelessWidget {
  const EmptyStateComponent({
    required this.label,
    super.key,
    this.useAsView = false,
    this.contentPadding,
  });
  final String label;
  final bool useAsView;
  final EdgeInsets? contentPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (useAsView) const Spacer(),
          AppDisabledEffectWidget(
            child: Assets.images.selectBank.image(
              height: AppSizes.h.s64,
            ),
          ),
          AppGaps.ver.s12,
          AppTextComponent.bodyMedium(
            label,
            textAlign: TextAlign.center,
            color: context.customColorScheme.contentLowest,
          ),
          if (useAsView) const Spacer(flex: 2),
        ],
      ),
    );
  }
}
