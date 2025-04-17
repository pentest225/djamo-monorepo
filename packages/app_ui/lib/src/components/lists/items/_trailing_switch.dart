part of 'app_list_item_component.dart';

class _TrailingSwitch<T extends Object?> extends AppListItemComponent<T> {
  const _TrailingSwitch({
    required super.title,
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
    this.initialState = false,
    this.onChanged,
  });

  final bool initialState;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return _Switch(
      initialState: initialState,
      title: title,
      subtitle: subtitle,
      thirdLine: thirdLine,
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
    );
  }
}

class _Switch extends StatefulWidget {
  const _Switch({
    required this.title,
    this.onChanged,
    this.initialState = false,
    this.subtitle,
    this.thirdLine,
    this.titleMaxLines,
    this.subtitleMaxLines,
    this.leading,
    this.leadingWidget,
    this.contentPadding,
    this.titleAlignment,
    this.titleColor,
    this.horizontalPadding,
    this.highlight,
  });
  final bool initialState;
  final ValueChanged<bool>? onChanged;
  final String title;
  final String? subtitle;
  final Widget? thirdLine;
  final int? titleMaxLines;
  final int? subtitleMaxLines;
  final AppAssetBuilder? leading;
  final Widget? leadingWidget;
  final EdgeInsetsGeometry? contentPadding;
  final CrossAxisAlignment? titleAlignment;
  final Color? titleColor;
  final double? horizontalPadding;
  final Widget? highlight;
  @override
  State<_Switch> createState() => _SwitchState();
}

class _SwitchState extends State<_Switch> {
  bool _isActivated = false;

  @override
  void initState() {
    _isActivated = widget.initialState;
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
      onPressed: !hasCallback ? null : () => _onChanged(!_isActivated),
      leading: widget.leading,
      leadingWidget: widget.leadingWidget,
      titleAlignment: widget.titleAlignment,
      titleColor: widget.titleColor,
      contentPadding: widget.contentPadding,
      horizontalPadding: widget.horizontalPadding,
      trailing: AppSwitchButtonComponent.basic(
        isSelected: _isActivated,
        onChanged: _onChanged,
      ),
    );
  }

  void _onChanged(bool r) {
    setState(() {
      _isActivated = r;
    });
    widget.onChanged?.call(r);
  }
}
