import 'package:app_ui/src/components/components.dart';
import 'package:app_ui/src/core/core.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class AppCategoryCardComponent extends StatelessWidget {
  const AppCategoryCardComponent({
    required this.name,
    required this.icon,
    required this.value,
    super.key,
    this.nameMaxLines,
    this.description,
    this.descriptionMaxLines,
    this.onPressed,
    this.onEditPressed,
    this.progressIndicatorColor,
  }) : assert(value >= 0 && value <= 1, 'Value must be between 0 and 1');

  final String name;
  final int? nameMaxLines;
  final String? description;
  final int? descriptionMaxLines;
  final AppAssetBuilder icon;
  final VoidCallback? onPressed;
  final VoidCallback? onEditPressed;
  final Color? progressIndicatorColor;

  ///Between 0 and 1
  final double value;

  @override
  Widget build(BuildContext context) {
    final hasDescriptionAndMaxLines = description != null && description!.isNotEmpty && descriptionMaxLines != null && descriptionMaxLines! > 1;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        borderRadius: AppBorderRadius.s12.all,
        border: Border.all(
          color: context.customColorScheme.primaryCardOutline,
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: AppBorderRadius.s12.all,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: AppBorderRadius.s12.top,
              child: AppListItemComponent.custom(
                horizontalPadding: AppSizes.w.s16,
                tileAlignment: useReturnValue(() {
                  if (hasDescriptionAndMaxLines) {
                    return CrossAxisAlignment.start;
                  }
                  return CrossAxisAlignment.center;
                }),
                titleColor: Colors.transparent,
                title: name,
                titleMaxLines: nameMaxLines,
                subtitle: description,
                subtitleMaxLines: descriptionMaxLines,
                leading: icon.mayOverrideConfig(
                  config: AssetBuilderConfig.svg(
                    height: AppSizes.h.s24,
                    width: AppSizes.h.s24,
                  )
                      .$image(
                        height: AppSizes.h.s24,
                        width: AppSizes.h.s24,
                      )
                      .$icon(
                        size: AppSizes.f.s24,
                      ),
                ),
                trailing: onEditPressed != null
                    ? InkWell(
                        key: const Key('EditButton'),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: onEditPressed,
                        child: SizedBox.square(
                          dimension: AppSizes.w.s24,
                          child: Assets.icons.modeEdit.svg(
                            height: AppSizes.h.s24,
                            width: AppSizes.h.s24,
                            colorFilter: context.colorScheme.onSurfaceVariant.toSrcMode(),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            //if (hasDescriptionAndMaxLines) AppGaps.ver.s16,
            Padding(
              padding: AppPaddings.s16.horizontal.copyWith(
                bottom: AppSizes.h.s16,
              ),
              child: AppProgressIndicatorComponent.linear(
                progressIndicatorColor: progressIndicatorColor ??
                    (value < 0.5
                        ? context.colorScheme.primary
                        : value > .5 && value <= .8
                            ? context.colorScheme.tertiaryFixedDim
                            : context.colorScheme.error),
                animationControllerValue: value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
