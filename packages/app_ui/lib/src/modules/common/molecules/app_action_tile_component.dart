import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppActionTileComponent extends StatelessWidget {
  const AppActionTileComponent({
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.leading,
    this.onPressed,
    this.contentPadding,
    this.foregroundColor,
    super.key,
  });

  //arrowForward
  factory AppActionTileComponent.arrowForward({
    required String title,
    required String subtitle,
    VoidCallback? onArrowPressed,
    EdgeInsets? contentPadding,
    Color? foregroundColor,
    Widget? leading,
  }) {
    return AppActionTileComponent(
      title: title,
      subtitle: subtitle,
      leading: leading,
      onPressed: onArrowPressed,
      contentPadding: contentPadding ??
          AppPaddings.s16.horizontal.copyWith(
            right: AppSizes.w.custom(4),
          ),
      foregroundColor: foregroundColor,
      trailing: Builder(
        builder: (context) {
          return IconButton(
            icon: Assets.icons.arrowForward.svg(
              colorFilter: foregroundColor?.toSrcMode(),
            ),
            onPressed: onArrowPressed,
          );
        },
      ),
    );
  }
  factory AppActionTileComponent.copy({
    required String title,
    required String subtitle,
    required VoidCallback onCopyPressed,
    EdgeInsets? contentPadding,
    Color? foregroundColor,
  }) {
    return AppActionTileComponent(
      title: title,
      subtitle: subtitle,
      contentPadding: contentPadding,
      foregroundColor: foregroundColor,
      onPressed: onCopyPressed,
      trailing: Builder(
        builder: (context) {
          return OutlinedButton.icon(
            icon: Assets.icons.contentCopy.svg(
              colorFilter: foregroundColor?.toSrcMode(),
            ),
            onPressed: onCopyPressed,
            label: Text(context.l10n.copy),
          );
        },
      ),
    );
  }

  factory AppActionTileComponent.copyIcon({
    required String title,
    required String subtitle,
    required VoidCallback onCopyPressed,
    EdgeInsets? contentPadding,
    Color? foregroundColor,
  }) {
    return AppActionTileComponent(
      title: title,
      subtitle: subtitle,
      contentPadding: contentPadding,
      foregroundColor: foregroundColor,
      onPressed: onCopyPressed,
      trailing: Builder(
        builder: (context) {
          return IconButton(
            onPressed: onCopyPressed,
            icon: Assets.icons.contentCopy.svg(
              colorFilter: foregroundColor?.toSrcMode(),
              height: AppSizes.h.s24,
              width: AppSizes.h.s24,
            ),
          );
        },
      ),
    );
  }

  //radio
  factory AppActionTileComponent.switchButton({
    required String title,
    required String subtitle,
    ValueChanged<bool?>? onChanged,
    EdgeInsets? contentPadding,
    Color? foregroundColor,
    bool value = false,
    Widget? leading,
    Key? key,
  }) {
    return AppActionTileComponent(
      key: key,
      title: title,
      subtitle: subtitle,
      leading: leading,
      contentPadding: contentPadding ??
          AppPaddings.s16.horizontal.copyWith(
            right: AppSizes.w.custom(4),
          ),
      foregroundColor: foregroundColor,
      onPressed: onChanged != null ? () => onChanged(!value) : null,
      trailing: Builder(
        builder: (context) {
          return Transform.scale(
            scale: .8,
            child: CupertinoSwitch(
              value: value,
              onChanged: onChanged,
              activeColor: foregroundColor ?? context.colorScheme.primary,
            ),
          );
        },
      ),
    );
  }

  //radio
  factory AppActionTileComponent.radio({
    required String title,
    required String subtitle,
    ValueChanged<bool?>? onChanged,
    EdgeInsets? contentPadding,
    Color? foregroundColor,
    bool value = false,
    bool? groupValue,
    Widget? leading,
    Key? key,
  }) {
    return AppActionTileComponent(
      key: key,
      title: title,
      subtitle: subtitle,
      leading: leading,
      contentPadding: contentPadding ??
          AppPaddings.s16.horizontal.copyWith(
            right: AppSizes.w.custom(4),
          ),
      foregroundColor: foregroundColor,
      onPressed: onChanged != null ? () => onChanged(!value) : null,
      trailing: Builder(
        builder: (context) {
          return Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: foregroundColor ?? context.colorScheme.primary,
          );
        },
      ),
    );
  }

  final String title;
  final String subtitle;
  final Widget trailing;
  final Widget? leading;
  final VoidCallback? onPressed;
  final EdgeInsets? contentPadding;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      minVerticalPadding: 0,
      contentPadding: contentPadding ?? AppPaddings.s16.horizontal,
      splashColor: Colors.transparent,
      textColor: foregroundColor,
      iconColor: foregroundColor,
      title: AppTextComponent.bodyLarge(
        title,
        color: foregroundColor,
      ),
      subtitle: subtitle.isNotEmpty
          ? AppTextComponent.bodyMedium(
              subtitle,
              color: foregroundColor,
            )
          : null,
      trailing: trailing,
      leading: leading,
      horizontalTitleGap: AppSizes.w.s16,
    );
  }
}
