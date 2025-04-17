import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_trailing_arrow_forward.dart';
part '_trailing_check_box.dart';
part '_trailing_custom.dart';
part '_trailing_none.dart';
part '_trailing_radio.dart';
part '_trailing_switch.dart';

abstract class AppListItemComponent<T extends Object?> extends StatelessWidget {
  const AppListItemComponent({
    required this.title,
    super.key,
    this.subtitle,
    this.customSubtitle,
    this.thirdLine,
    this.highlight,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.leading,
    this.leadingWidget,
    this.contentPadding,
    this.onPressed,
    this.tileAlignment,
    this.titleColor,
    this.horizontalPadding,
    this.foregroundColor,
    this.useRichText = false,
  }) : assert(
          tileAlignment != CrossAxisAlignment.stretch && tileAlignment != CrossAxisAlignment.baseline,
          'titleAlignment must be either start, center, or end',
        );

  /// Creates a list item without a trailing widget.
  factory AppListItemComponent.none({
    required String title,
    String? subtitle,
    Widget? thirdLine,
    int? titleMaxLines,
    int? subtitleMaxLines,
    Widget? highlight,
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
    bool useRichText = false,
  }) {
    return _TrailingNone(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: leading,
      leadingWidget: leadingWidget,
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      useRichText: useRichText,
    );
  }

  /// Creates a list item with a trailing switch.
  factory AppListItemComponent.switcher({
    required String title,
    String? subtitle,
    Widget? thirdLine,
    Widget? highlight,
    int? titleMaxLines,
    int? subtitleMaxLines,
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    bool initialState = false,
    ValueChanged<bool>? onChanged,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
  }) {
    return _TrailingSwitch(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: leading,
      leadingWidget: leadingWidget,
      initialState: initialState,
      onChanged: onChanged,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
    );
  }

  /// Creates a list item with a trailing radio.
  factory AppListItemComponent.radio({
    required String title,
    required T value,
    String? subtitle,
    Widget? customSubtitle,
    Widget? thirdLine,
    Widget? highlight,
    int? titleMaxLines,
    int? subtitleMaxLines,

    /// Prefer using [AppAssetBuilder] to build the leading widget.
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    EdgeInsetsGeometry? contentPadding,
    T? groupValue,
    void Function(T)? onChanged,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    bool useRichText = false,
    Key? key,
  }) {
    return _TrailingRadio<T>(
      title: title,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      subtitle: subtitle,
      customSubtitle: customSubtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: leading,
      leadingWidget: leadingWidget,
      contentPadding: contentPadding,
      tileAlignment: tileAlignment,
      key: key,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      useRichText: useRichText,
    );
  }

  /// Creates a list item with a trailing checkbox.
  factory AppListItemComponent.checkbox({
    required String title,
    bool? initialValue,
    Widget? thirdLine,
    Widget? highlight,
    String? subtitle,
    int? titleMaxLines,
    int? subtitleMaxLines,
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    ValueChanged<bool>? onChanged,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
  }) {
    return _TrailingCheckbox(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: leading,
      leadingWidget: leadingWidget,
      onChanged: onChanged,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      initialValue: initialValue,
    );
  }

  factory AppListItemComponent.checkboxAsLeading({
    required String title,
    bool? initialValue,
    Widget? highlight,
    String? subtitle,
    Widget? thirdLine,
    int? titleMaxLines,
    int? subtitleMaxLines,
    AppAssetBuilder? trailing,
    Widget? trailingWidget,
    ValueChanged<bool>? onChanged,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
  }) {
    return _TrailingCheckbox(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: trailing,
      leadingWidget: trailingWidget,
      onChanged: onChanged,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      initialValue: initialValue,
      checkboxAsLeading: true,
    );
  }

  /// Creates a list item with a trailing arrowForward.
  factory AppListItemComponent.arrowForward({
    required String title,
    String? subtitle,
    Widget? highlight,
    Widget? thirdLine,
    int? titleMaxLines,
    int? subtitleMaxLines,
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    Color? foregroundColor,
    double? horizontalPadding,
    Key? key,
  }) {
    return _TrailingArrowForward(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: leading,
      leadingWidget: leadingWidget,
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      foregroundColor: foregroundColor,
    );
  }

  /// Creates a list item with a trailing custom.
  factory AppListItemComponent.custom({
    required String title,
    Widget? trailing,
    String? subtitle,
    Widget? thirdLine,
    Widget? highlight,
    int? titleMaxLines,
    int? subtitleMaxLines,
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
    EdgeInsetsGeometry? contentPadding,
    Color? foregroundColor,
  }) {
    return _TrailingCustom(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leading: leading,
      leadingWidget: leadingWidget,
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      contentPadding: contentPadding,
      trailing: trailing,
      foregroundColor: foregroundColor,
    );
  }

  factory AppListItemComponent.monogram({
    required String title,
    required String monogram,
    String? subtitle,
    Widget? highlight,
    Widget? thirdLine,
    int? subtitleMaxLines,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
  }) {
    return _TrailingArrowForward(
      key: key,
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      subtitleMaxLines: subtitleMaxLines,
      leadingWidget: AppIdentityTagComponent.monogram(monogram: monogram),
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
    );
  }

  factory AppListItemComponent.avatar({
    required String title,
    String? subtitle,
    Widget? highlight,
    Widget? thirdLine,
    int? subtitleMaxLines,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
  }) {
    return _TrailingArrowForward(
      key: key,
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      subtitleMaxLines: subtitleMaxLines,
      leadingWidget: const AppIdentityTagComponent.avatar(),
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
    );
  }

  factory AppListItemComponent.picture({
    required String title,
    required String imageUrl,
    Widget? highlight,
    Widget? thirdLine,
    Widget? trailing,
    AppAssetBuilder? leftBadge,
    AppAssetBuilder? rightBadge,
    String? subtitle,
    int? subtitleMaxLines,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Map<String, String>? httpHeaders,
    Key? key,
  }) {
    return _TrailingCustom(
      key: key,
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      subtitleMaxLines: subtitleMaxLines,
      leadingWidget: AppIdentityTagComponent.picture(
        imageUrl: imageUrl,
        leftBadge: leftBadge,
        rightBadge: rightBadge,
        httpHeaders: httpHeaders,
      ),
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      trailing: trailing,
    );
  }

  factory AppListItemComponent.pictureWithNavigateNext({
    required String title,
    required String imageUrl,
    Widget? highlight,
    Widget? thirdLine,
    AppAssetBuilder? leftBadge,
    AppAssetBuilder? rightBadge,
    String? subtitle,
    int? subtitleMaxLines,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Map<String, String>? httpHeaders,
    Key? key,
  }) {
    return _TrailingArrowForward(
      key: key,
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      subtitleMaxLines: subtitleMaxLines,
      leadingWidget: AppIdentityTagComponent.picture(
        imageUrl: imageUrl,
        leftBadge: leftBadge,
        rightBadge: rightBadge,
        httpHeaders: httpHeaders,
      ),
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
    );
  }

  factory AppListItemComponent.monogramWithInputChip({
    required String title,
    required String chipLabel,
    required String monogram,
    String? subtitle,
    Widget? highlight,
    Widget? thirdLine,
    int? subtitleMaxLines,
    AppAssetBuilder? leading,
    Widget? leadingWidget,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
  }) {
    final hasLeading = leading != null || leadingWidget != null;
    return _TrailingCustom(
      key: key,
      title: title,
      subtitle: subtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      subtitleMaxLines: subtitleMaxLines,
      leading: hasLeading ? leading : null,
      leadingWidget: hasLeading
          ? leadingWidget
          : AppIdentityTagComponent.monogram(
              monogram: monogram,
            ),
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      trailing: AppChipsComponent.inputChip(
        labelText: chipLabel,
        showCheckmark: false,
        onSelected: (_) {},
        selected: true,
      ),
    );
  }

  //Unordered
  factory AppListItemComponent.unordered({
    required String title,
    Widget? trailing,
    String? subtitle,
    Widget? thirdLine,
    Widget? highlight,
    int? titleMaxLines,
    int? subtitleMaxLines,
    VoidCallback? onPressed,
    CrossAxisAlignment? tileAlignment,
    Color? titleColor,
    double? horizontalPadding,
    Key? key,
    EdgeInsetsGeometry? contentPadding,
    bool useRichText = false,
  }) {
    return _TrailingCustom(
      key: key,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      leadingWidget: const AppTextComponent.titleLarge('\u2022'),
      onPressed: onPressed,
      tileAlignment: tileAlignment,
      titleColor: titleColor,
      horizontalPadding: horizontalPadding,
      contentPadding: contentPadding,
      trailing: trailing,
      useRichText: useRichText,
    );
  }

  final String title;
  final String? subtitle;
  final Widget? customSubtitle;
  final Widget? thirdLine;
  final Widget? highlight;
  final int? titleMaxLines;
  final int? subtitleMaxLines;
  final AppAssetBuilder? leading;
  final Widget? leadingWidget;
  final EdgeInsetsGeometry? contentPadding;
  final CrossAxisAlignment? tileAlignment;
  final VoidCallback? onPressed;
  final Color? titleColor;
  final double? horizontalPadding;
  final Color? foregroundColor;
  final bool useRichText;
}
