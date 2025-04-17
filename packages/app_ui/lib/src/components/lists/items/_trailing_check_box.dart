part of 'app_list_item_component.dart';

class _TrailingCheckbox<T extends Object?> extends AppListItemComponent<T> {
  const _TrailingCheckbox({
    required super.title,
    this.initialValue,
    super.subtitle,
    super.highlight,
    super.thirdLine,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.leading,
    super.leadingWidget,
    super.tileAlignment,
    super.titleColor,
    super.horizontalPadding,
    super.key,
    this.onChanged,
    this.checkboxAsLeading = false,
  });

  final bool? initialValue;
  final ValueChanged<bool>? onChanged;
  final bool checkboxAsLeading;

  @override
  Widget build(BuildContext context) {
    return _Checkbox(
      title: title,
      subtitle: subtitle,
      initialValue: initialValue,
      highlight: highlight,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      onChanged: onChanged,
      leading: leading,
      leadingWidget: leadingWidget,
      titleAlignment: tileAlignment,
      titleColor: titleColor,
      contentPadding: contentPadding,
      horizontalPadding: horizontalPadding,
      checkboxAsLeading: checkboxAsLeading,
      thirdLine: thirdLine,
    );
  }
}

class _Checkbox extends StatefulWidget {
  const _Checkbox({
    required this.title,
    this.initialValue,
    this.onChanged,
    this.subtitle,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.leading,
    this.leadingWidget,
    this.contentPadding,
    this.titleAlignment,
    this.titleColor,
    this.horizontalPadding,
    this.checkboxAsLeading = false,
    this.thirdLine,
    this.highlight,
  });

  final bool? initialValue;
  final ValueChanged<bool>? onChanged;
  final String title;
  final String? subtitle;
  final int? titleMaxLines;
  final int? subtitleMaxLines;
  final AppAssetBuilder? leading;
  final Widget? leadingWidget;
  final EdgeInsetsGeometry? contentPadding;
  final CrossAxisAlignment? titleAlignment;
  final Color? titleColor;
  final double? horizontalPadding;
  final bool checkboxAsLeading;
  final Widget? thirdLine;
  final Widget? highlight;

  @override
  State<_Checkbox> createState() => _CheckboxState();
}

class _CheckboxState extends State<_Checkbox> {
  bool _value = false;

  @override
  void initState() {
    _value = widget.initialValue ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hasCallback = widget.onChanged != null;
    return _CustomListTile(
      title: widget.title,
      subtitle: widget.subtitle,
      thirdLine: widget.thirdLine,
      highlight: widget.highlight,
      titleMaxLines: widget.titleMaxLines,
      subtitleMaxLines: widget.subtitleMaxLines,
      onPressed: !hasCallback ? null : _onChanged,
      leading: widget.checkboxAsLeading ? null : widget.leading,
      leadingWidget: widget.checkboxAsLeading
          ? AppCheckboxButtonComponent(
              isChecked: _value,
              onChanged: !hasCallback
                  ? null
                  : (_) {
                      _onChanged();
                    },
            )
          : widget.leadingWidget,
      titleAlignment: widget.titleAlignment,
      titleColor: widget.titleColor,
      contentPadding: widget.contentPadding,
      horizontalPadding: widget.horizontalPadding,
      trailing: !widget.checkboxAsLeading
          ? AppCheckboxButtonComponent(
              isChecked: _value,
              onChanged: !hasCallback
                  ? null
                  : (_) {
                      _onChanged();
                    },
            )
          : widget.leadingWidget ?? widget.leadingWidget,
    );
  }

  void _onChanged() {
    setState(() {
      _value = !_value;
    });
    widget.onChanged?.call(_value);
  }
}
