import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part '_builder.dart';

@internal
class AppSnackBarComponent {
  const AppSnackBarComponent({
    required this.label,
    this.actionText,
    this.actionOnTap,
    this.withCloseIcon = false,
    this.isLongerAction = false,
    this.duration = 4,
    this.leadingIcon,
    this.crossAxisAlignment,
  });

  final String label;
  final String? actionText;
  final VoidCallback? actionOnTap;
  final bool withCloseIcon;
  final bool isLongerAction;
  final int duration;
  final AppAssetBuilder? leadingIcon;
  final CrossAxisAlignment? crossAxisAlignment;

  SnackBar createSnackBar(BuildContext context) {
    return SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r.s4),
      ),
      backgroundColor: context.colorScheme.inverseSurface,
      padding: EdgeInsets.zero,
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: duration),
      content: _SnackbarBuilder(
        label: label,
        actionText: actionText,
        actionOnTap: actionOnTap,
        withCloseIcon: withCloseIcon,
        isLongerAction: isLongerAction,
        leadingIcon: leadingIcon,
        crossAxisAlignment: crossAxisAlignment,
      ),
    );
  }
}

void useShowAppSnackBar(
  BuildContext context, {
  required String label,
  bool hidePrevious = true,
  String? actionText,
  VoidCallback? actionOnTap,
  bool withCloseIcon = false,
  bool isLongerAction = false,
  int duration = 4,
  AppAssetBuilder? leadingIcon,
  CrossAxisAlignment? crossAxisAlignment,
}) {
  final snackBarComponent = AppSnackBarComponent(
    label: label,
    actionText: actionText,
    actionOnTap: actionOnTap,
    withCloseIcon: withCloseIcon,
    isLongerAction: isLongerAction,
    duration: duration,
    leadingIcon: leadingIcon,
    crossAxisAlignment: crossAxisAlignment,
  );
  final snackBar = snackBarComponent.createSnackBar(context);
  if (!hidePrevious) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
    return;
  }
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void useShowSuccessfulAppSnackBar(
  BuildContext context, {
  required String label,
  bool hidePrevious = true,
  String? actionText,
  VoidCallback? actionOnTap,
  bool withCloseIcon = false,
  bool isLongerAction = false,
  int duration = 4,
  CrossAxisAlignment? crossAxisAlignment,
}) {
  useShowAppSnackBar(
    context,
    label: label,
    hidePrevious: hidePrevious,
    actionText: actionText,
    actionOnTap: actionOnTap,
    withCloseIcon: withCloseIcon,
    isLongerAction: isLongerAction,
    duration: duration,
    crossAxisAlignment: crossAxisAlignment,
    leadingIcon: AppAssetBuilder.svg(
      svg: Assets.icons.checkCircle,
      config: AssetBuilderConfig(svgColor: context.colorScheme.surface),
    ),
  );
}

void useShowWarningAppSnackBar(
  BuildContext context, {
  required String label,
  bool hidePrevious = true,
  String? actionText,
  VoidCallback? actionOnTap,
  bool withCloseIcon = false,
  bool isLongerAction = false,
  int duration = 4,
  CrossAxisAlignment? crossAxisAlignment,
}) {
  useShowAppSnackBar(
    context,
    label: label,
    hidePrevious: hidePrevious,
    actionText: actionText,
    actionOnTap: actionOnTap,
    withCloseIcon: withCloseIcon,
    isLongerAction: isLongerAction,
    duration: duration,
    crossAxisAlignment: crossAxisAlignment,
    leadingIcon: AppAssetBuilder.svg(
      svg: Assets.icons.warning,
      config: AssetBuilderConfig(svgColor: context.colorScheme.surface),
    ),
  );
}

void useHideAppSnackBar(BuildContext context, {SnackBarClosedReason reason = SnackBarClosedReason.hide}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar(reason: reason);
}
