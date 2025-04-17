part of 'app_list_item_component.dart';

class _TrailingRadio<T extends Object?> extends AppListItemComponent<T> {
  const _TrailingRadio({
    required super.title,
    required this.value,
    this.groupValue,
    super.subtitle,
    super.customSubtitle,
    super.highlight,
    super.thirdLine,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.leading,
    super.leadingWidget,
    super.contentPadding,
    super.tileAlignment,
    super.titleColor,
    super.horizontalPadding,
    super.useRichText,
    super.key,
    this.onChanged,
  });

  final T value;
  final T? groupValue;
  final void Function(T)? onChanged;

  @override
  Widget build(BuildContext context) {
    return _Radio<T>(
      title: title,
      subtitle: subtitle,
      customSubtitle: customSubtitle,
      highlight: highlight,
      thirdLine: thirdLine,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      onChanged: onChanged,
      leading: leading,
      leadingWidget: leadingWidget,
      titleAlignment: tileAlignment,
      titleColor: titleColor,
      contentPadding: contentPadding,
      value: value,
      groupValue: groupValue,
      horizontalPadding: horizontalPadding,
      useRichText: useRichText,
    );
  }
}

class _Radio<T> extends StatefulWidget {
  const _Radio({
    required this.value,
    required this.title,
    this.thirdLine,
    super.key,
    this.onChanged,
    this.groupValue,
    this.subtitle,
    this.customSubtitle,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.leading,
    this.leadingWidget,
    this.contentPadding,
    this.titleAlignment,
    this.titleColor,
    this.horizontalPadding,
    this.highlight,
    this.useRichText = false,
  });

  final T value;
  final T? groupValue;
  final Widget? thirdLine;
  final void Function(T)? onChanged;
  final String title;
  final String? subtitle;
  final Widget? customSubtitle;
  final int? titleMaxLines;
  final int? subtitleMaxLines;
  final AppAssetBuilder? leading;
  final Widget? leadingWidget;
  final EdgeInsetsGeometry? contentPadding;
  final CrossAxisAlignment? titleAlignment;
  final Color? titleColor;
  final double? horizontalPadding;
  final Widget? highlight;
  final bool useRichText;

  @override
  State<_Radio<T>> createState() => _RadioState<T>();
}

class _RadioState<T> extends State<_Radio<T>> {
  T? _groupValue;

  @override
  void initState() {
    _groupValue = widget.groupValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hasCallback = widget.onChanged != null;
    return _CustomListTile(
      key: ValueKey('$_groupValue-${widget.value}'),
      title: widget.title,
      subtitle: widget.subtitle,
      customSubtitle: widget.customSubtitle,
      highlight: widget.highlight,
      thirdLine: widget.thirdLine,
      titleMaxLines: widget.titleMaxLines,
      subtitleMaxLines: widget.subtitleMaxLines,
      onPressed: !hasCallback
          ? null
          : () {
              _onPressed(widget.value);
            },
      leading: widget.leading,
      leadingWidget: widget.leadingWidget,
      titleAlignment: widget.titleAlignment,
      titleColor: widget.titleColor,
      contentPadding: widget.contentPadding,
      horizontalPadding: widget.horizontalPadding,
      useRichText: widget.useRichText,
      trailing: SizedBox.square(
        dimension: AppSizes.h.s24,
        child: Radio(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: widget.value,
          groupValue: _groupValue,
          onChanged: !hasCallback ? null : _onPressed,
          activeColor: context.colorScheme.onSurface,
        ),
      ),
    );
  }

  void _onPressed(T? newValue) {
    setState(() {
      _groupValue = newValue;
    });
    widget.onChanged?.call(widget.value);
  }
}
