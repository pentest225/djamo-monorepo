import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_label_button_text.dart';
part 'elevated_button/_elevated_button_builder.dart';
part 'elevated_button/_elevated_button_component.dart';
part 'filled_button/_filled_button_builder.dart';
part 'filled_button/_filled_button_component.dart';
part 'outlined_button/_outlined_button_builder.dart';
part 'outlined_button/_outlined_button_component.dart';
part 'text_button/_text_button_builder.dart';
part 'text_button/_text_button_component.dart';
part 'tonal_button/_tonal_button_builder.dart';
part 'tonal_button/_tonal_button_component.dart';

EdgeInsets _horizontalPadding(bool hasIcon) {
  return AppPaddings.s24.horizontal.copyWith(
    left: hasIcon ? AppSizes.w.s16 : AppSizes.w.s24,
  );
}

AssetBuilderConfig _iconConfig({Color? color}) => AssetBuilderConfig.icon(
      size: AppSizes.f.s18,
      color: color,
    ).$svg(
      width: AppSizes.f.s18,
      height: AppSizes.f.s18,
      color: color,
    );

abstract class AppCommonButtonComponent extends StatelessWidget {
  const AppCommonButtonComponent({
    required this.label,
    this.icon,
    this.foregroundColor,
    this.borderColor,
    this.isLarge = false,
    this.isEnabled = true,
    this.fullMaxWidth = false,
    this.contentPadding,
    this.onPressed,
    super.key,
  });

  // Filled buttons
  const factory AppCommonButtonComponent.filledButton({
    required String label,
    AppAssetBuilder? icon,
    bool isLarge,
    bool isEnabled,
    bool fullMaxWidth,
    void Function()? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    Key? key,
  }) = _FilledButtonComponent;

  // Outlined buttons
  const factory AppCommonButtonComponent.outlinedButton({
    required String label,
    AppAssetBuilder? icon,
    bool isLarge,
    bool isEnabled,
    bool fullMaxWidth,
    Color? foregroundColor,
    Color? borderColor,
    Key? key,
    void Function()? onPressed,
  }) = _OutlinedButtonComponent;

  // Text buttons
  const factory AppCommonButtonComponent.textButton({
    required String label,
    AppAssetBuilder? icon,
    bool isEnabled,
    Color? foregroundColor,
    void Function()? onPressed,
    EdgeInsetsGeometry? contentPadding,
  }) = _TextButtonComponent;

  // Elevated buttons
  const factory AppCommonButtonComponent.elevatedButton({
    required String label,
    AppAssetBuilder? icon,
    bool isEnabled,
    bool fullMaxWidth,
    void Function()? onPressed,
  }) = _ElevatedButtonComponent;

  // Tonal buttons
  const factory AppCommonButtonComponent.tonalButton({
    required String label,
    AppAssetBuilder? icon,
    bool isEnabled,
    void Function()? onPressed,
  }) = _TonalButtonComponent;

  final String label;
  final AppAssetBuilder? icon;
  final Color? foregroundColor;
  final Color? borderColor;
  final bool? isLarge;
  final bool? isEnabled;
  final bool? fullMaxWidth;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onPressed;
}
