part of 'app_dropdown_bottom_sheet_component.dart';

///
class _AppDropdownFieldWidget<T> extends StatefulWidget {
  ///
  const _AppDropdownFieldWidget({
    required this.label,
    required this.hasFocused,
    required this.onItemChanged,
    required this.onMenuStateChange,
    required this.items,
    super.key,
    this.itemValueFormatter,
    this.decoration,
    this.buttonKey,
    this.value,
  });
  final T? value;
  final String label;
  final bool hasFocused;
  final AppDropdownDecoration? decoration;
  final List<T> items;
  final void Function(T?) onItemChanged;
  final ValueChanged<bool> onMenuStateChange;

  ///You must use [itemValueFormatter] to format the label
  ///as you want to show him in the dropdown item.
  ///By default, the dropdown item will show [T].[toString]
  final String Function(T?)? itemValueFormatter;
  final GlobalKey? buttonKey;

  @override
  State<_AppDropdownFieldWidget<T>> createState() => _AppDropdownFieldWidgetState<T>();
}

class _AppDropdownFieldWidgetState<T> extends State<_AppDropdownFieldWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: DisableGlowingScrollBehavior(),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          key: widget.buttonKey,
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.zero,
            height: 47,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 47.0 * 5,
            elevation: 0,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, .15),
                  blurRadius: 14,
                  spreadRadius: -2.5,
                  blurStyle: BlurStyle.outer,
                  color: context.theme.colorScheme.onSurfaceVariant.withOpacity(.25),
                ),
              ],
            ),
            offset: const Offset(0, -5),
          ),
          customButton: _AppDropdownSelectButton(
            label: widget.label,
            value: widget.value != null ? widget.itemValueFormatter?.call(widget.value) : '',
            initialValue: null,
            hasFocus: widget.hasFocused,
            borderFocusedColor: widget.decoration!.borderFocusedColor,
            textColor: widget.decoration!.dropdownBtnTextColor,
            backgroundColor: widget.decoration!.dropdownBtnBackgroundColor,
            borderUnfocusedColor: widget.decoration!.borderUnfocusedColor,
          ),
          onMenuStateChange: widget.onMenuStateChange,
          value: widget.value,
          items: widget.items.map(
            (item) {
              return DropdownMenuItem(
                value: item,
                child: _AppDropdownItemChild(
                  value: item,
                  isSelected: _isSelected(item),
                  isNotLastItem: item != widget.items.last,
                  label: widget.itemValueFormatter != null ? widget.itemValueFormatter!(item) : item?.toString() ?? '',
                  backgroundColor: Colors.white,
                  dropdownTextColor: widget.decoration!.dropdownTextColor,
                  dropdownSeparatorColor: widget.decoration!.dropdownSeparatorColor,
                ),
              );
            },
          ).toList(),
          onChanged: widget.onItemChanged,
        ),
      ),
    );
  }

  bool _isSelected(T e) => widget.value != null && widget.value == e;
}

class _AppDropdownSelectButton extends StatelessWidget {
  const _AppDropdownSelectButton({
    required this.initialValue,
    required this.label,
    this.value,
    this.hasFocus = false,
    this.textColor,
    this.backgroundColor,
    this.borderFocusedColor,
    this.borderUnfocusedColor,
  });
  final String label;
  final String? initialValue;
  final String? value;
  final bool hasFocus;
  final Color? textColor;
  final Color? borderFocusedColor;
  final Color? borderUnfocusedColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: TextFormField(
        key: ValueKey(value),
        readOnly: true,
        initialValue: value ?? initialValue,
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: AppAssetBuilder.icon(icon: Icons.arrow_drop_down),
        ),
      ),
    );
  }
}

class _AppDropdownItemChild<T> extends StatelessWidget {
  const _AppDropdownItemChild({
    required this.value,
    required this.label,
    super.key,
    this.backgroundColor,
    this.dropdownTextColor,
    this.dropdownSeparatorColor,
    this.isSelected = false,
    this.isNotLastItem = true,
  });
  final T value;
  final String? label;
  final Color? backgroundColor;
  final Color? dropdownTextColor;
  final Color? dropdownSeparatorColor;
  final bool isSelected;
  final bool isNotLastItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      color: isSelected ? context.theme.colorScheme.primaryContainer : context.theme.colorScheme.surface,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 1.5,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label ?? '',
              textAlign: TextAlign.left,
              style: context.theme.textTheme.labelLarge?.copyWith(
                color: dropdownTextColor ?? context.theme.colorScheme.onSurface,
              ),
            ),
          ),
          if (isNotLastItem)
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                color: isSelected ? Colors.white12 : dropdownSeparatorColor ?? context.theme.colorScheme.primaryContainer.withOpacity(.15),
                margin: const EdgeInsets.only(right: 8),
                height: .85,
              ),
            ),
        ],
      ),
    );
  }
}

///
class AppDropdownDecoration {
  ///
  const AppDropdownDecoration({
    this.dropdownBtnBorderColor,
    this.dropdownBtnBackgroundColor,
    this.dropdownBtnTextColor,
    this.dropdownColor,
    this.dropdownTextColor,
    this.dropdownSeparatorColor,
    this.borderFocusedColor,
    this.borderUnfocusedColor,
  });

  ///
  final Color? dropdownBtnBorderColor;
  final Color? dropdownBtnBackgroundColor;
  final Color? dropdownBtnTextColor;
  final Color? dropdownColor;
  final Color? dropdownTextColor;
  final Color? dropdownSeparatorColor;
  final Color? borderFocusedColor;
  final Color? borderUnfocusedColor;

  AppDropdownDecoration copyWith({
    Color? dropdownBtnBorderColor,
    Color? dropdownBtnBackgroundColor,
    Color? dropdownBtnTextColor,
    Color? dropdownColor,
    Color? dropdownTextColor,
    Color? dropdownSeparatorColor,
    Color? borderFocusedColor,
    Color? borderUnfocusedColor,
  }) {
    return AppDropdownDecoration(
      dropdownBtnBorderColor: dropdownBtnBorderColor ?? this.dropdownBtnBorderColor,
      dropdownBtnBackgroundColor: dropdownBtnBackgroundColor ?? this.dropdownBtnBackgroundColor,
      dropdownBtnTextColor: dropdownBtnTextColor ?? this.dropdownBtnTextColor,
      dropdownColor: dropdownColor ?? this.dropdownColor,
      dropdownTextColor: dropdownTextColor ?? this.dropdownTextColor,
      dropdownSeparatorColor: dropdownSeparatorColor ?? this.dropdownSeparatorColor,
      borderFocusedColor: borderFocusedColor ?? this.borderFocusedColor,
      borderUnfocusedColor: borderUnfocusedColor ?? this.borderUnfocusedColor,
    );
  }
}
