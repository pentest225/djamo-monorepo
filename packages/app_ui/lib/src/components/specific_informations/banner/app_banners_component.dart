import 'package:app_ui/src/components/buttons/common_buttons/app_common_button_component.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

part '_banner_type_enum.dart';
part '_builder.dart';
part '_error_app_banner_component.dart';
part '_info_app_banner_component.dart';
part '_sucess_app_banner_component.dart';
part '_warning_app_banner_component.dart';

abstract class AppBannersComponent extends StatelessWidget {
  const AppBannersComponent({
    required this.type,
    this.title,
    this.titleMaxLines,
    this.labelButtonText = 'Compris',
    this.hideBorder = true,
    super.key,
    this.contentWidget,
    this.contentText,
    this.contentTextMaxLines,
    this.padding,
    this.backgroundColor,
    this.isLimitedText = false,
    this.icon,
    this.labelButtonComponent,
    this.onPressed,
    this.showLabelButton = true,
    this.useRichTextForContent = false,
    this.customIcon,
    this.customBtnGap,
    this.crossAxisAlignment,
    this.onCloseButtonPressed,
  });

  const factory AppBannersComponent.info({
    String title,
    int? titleMaxLines,
    BannerTypeEnum type,
    bool hideBorder,
    Widget? contentWidget,
    String? contentText,
    int? contentTextMaxLines,
    String? labelButtonText,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool? isLimitedText,
    Widget Function(
      BuildContext context,
      Color color,
    )? icon,
    AppCommonButtonComponent? labelButtonComponent,
    void Function()? onPressed,
    bool showLabelButton,
    AppAssetBuilder? customIcon,
    Widget? customBtnGap,
    CrossAxisAlignment? crossAxisAlignment,
    bool useRichTextForContent,
    VoidCallback? onCloseButtonPressed,
  }) = _InfoAppBannerComponent;

  const factory AppBannersComponent.success({
    String title,
    int? titleMaxLines,
    BannerTypeEnum type,
    bool hideBorder,
    Widget? contentWidget,
    String? contentText,
    int? contentTextMaxLines,
    String? labelButtonText,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool? isLimitedText,
    Widget Function(
      BuildContext context,
      Color color,
    )? icon,
    AppCommonButtonComponent? labelButtonComponent,
    void Function()? onPressed,
    bool showLabelButton,
    AppAssetBuilder? customIcon,
    Widget? customBtnGap,
    VoidCallback? onCloseButtonPressed,
  }) = _SuccessAppBannerComponent;

  const factory AppBannersComponent.warning({
    String title,
    int? titleMaxLines,
    BannerTypeEnum type,
    bool hideBorder,
    Widget? contentWidget,
    String? contentText,
    int? contentTextMaxLines,
    String? labelButtonText,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool? isLimitedText,
    Widget Function(
      BuildContext context,
      Color color,
    )? icon,
    AppCommonButtonComponent? labelButtonComponent,
    void Function()? onPressed,
    bool showLabelButton,
    AppAssetBuilder? customIcon,
    Widget? customBtnGap,
    bool useRichTextForContent,
  }) = _WarningAppBannerComponent;

  const factory AppBannersComponent.error({
    String title,
    int? titleMaxLines,
    BannerTypeEnum type,
    bool hideBorder,
    Widget? contentWidget,
    String? contentText,
    int? contentTextMaxLines,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool? isLimitedText,
    Widget Function(
      BuildContext context,
      Color color,
    )? icon,
    AppCommonButtonComponent? labelButtonComponent,
    void Function()? onPressed,
    bool showLabelButton,
    String? labelButtonText,
    AppAssetBuilder? customIcon,
    Widget? customBtnGap,
  }) = _ErrorAppBannerComponent;

  final String? title;
  final int? titleMaxLines;
  final String? labelButtonText;
  final BannerTypeEnum type;
  final bool? hideBorder;
  final Widget? contentWidget;
  final String? contentText;
  final int? contentTextMaxLines;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? isLimitedText;
  final Widget Function(
    BuildContext context,
    Color color,
  )? icon;
  final AppCommonButtonComponent? labelButtonComponent;
  final void Function()? onPressed;
  final bool showLabelButton;
  final AppAssetBuilder? customIcon;
  final Widget? customBtnGap;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool useRichTextForContent;
  final VoidCallback? onCloseButtonPressed;
}
