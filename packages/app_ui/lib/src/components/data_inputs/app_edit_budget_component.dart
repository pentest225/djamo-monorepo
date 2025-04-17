import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppEditBudgetComponent extends StatelessWidget {
  const AppEditBudgetComponent({
    required this.label,
    required this.icon,
    required this.onChanged,
    this.initialBudget,
    super.key,
  });

  final String label;
  final double? initialBudget;

  /// Icon to be displayed
  /// Prefer use [AppAssetBuilder.svg] or [AppAssetBuilder.image] to build the icon
  final AppAssetBuilder icon;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h.s64,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                SizedBox.square(
                  dimension: AppSizes.h.s24,
                  child: Align(
                    child: icon.mayOverrideConfig(
                      config: AssetBuilderConfig.image(
                        width: AppSizes.h.s24,
                        height: AppSizes.h.s24,
                      ).$svg(
                        width: AppSizes.h.s24,
                        height: AppSizes.h.s24,
                      ),
                    ),
                  ),
                ),
                AppGaps.hor.s16,
                Expanded(
                  child: AppTextComponent.titleMedium(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          AppGaps.hor.s16,
          Expanded(
            child: AppTextFieldComponent.operationAmountSmall(
              autoFocus: false,
              initialAmount: initialBudget,
              contentPadding: AppPaddings.s16.vertical,
              textInputAction: TextInputAction.done,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
