import 'package:animate_do/animate_do.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/modules/common/atoms/app_assistive_chip_widget.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

class AppAssistiveChipGroupComponent extends StatefulWidget {
  const AppAssistiveChipGroupComponent({
    required this.items,
    super.key,
    this.initialSelectedIdentifier,
    this.onChanged,
    this.direction = Axis.horizontal,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.alignment = WrapAlignment.start,
    this.animate = false,
  });

  final SelectionItems items;
  final String? initialSelectedIdentifier;
  final void Function(SelectionItem)? onChanged;
  final Axis direction;
  final WrapCrossAlignment crossAxisAlignment;
  final WrapAlignment alignment;
  final bool animate;

  @override
  State<AppAssistiveChipGroupComponent> createState() => _AppAssistiveChipGroupComponentState();
}

class _AppAssistiveChipGroupComponentState extends State<AppAssistiveChipGroupComponent> {
  late SelectionItem _selectedItem;

  @override
  void initState() {
    _selectedItem = widget.items.firstWhere(
      (item) => item.identifier == widget.initialSelectedIdentifier,
      orElse: () => SelectionItem.empty,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isClickable = widget.onChanged != null;
    return Wrap(
      spacing: AppSizes.h.s8,
      runSpacing: AppSizes.w.s8,
      direction: widget.direction,
      crossAxisAlignment: widget.crossAxisAlignment,
      alignment: widget.alignment,
      children: [
        ...widget.items.mapIndexed(
          (index, e) {
            final isSelected = e.identifier == _selectedItem.identifier;
            if (isSelected) {
              return _AnimateWrapper(
                key: ValueKey(e),
                animate: widget.animate,
                delayMultiplier: index,
                child: AppAssistiveChipWidget.selected(
                  text: e.label,
                  onPressed: !isClickable
                      ? null
                      : () {
                          _onChanged(e);
                        },
                ),
              );
            }
            return _AnimateWrapper(
              key: ValueKey(e),
              animate: widget.animate,
              delayMultiplier: index,
              child: AppAssistiveChipWidget.unselected(
                text: e.label,
                onPressed: !isClickable
                    ? null
                    : () {
                        _onChanged(e);
                      },
              ),
            );
          },
        ),
      ],
    );
  }

  void _onChanged(SelectionItem e) {
    setState(() {
      _selectedItem = e;
      widget.onChanged?.call(e);
    });
  }
}

class _AnimateWrapper extends StatelessWidget {
  const _AnimateWrapper({
    required this.child,
    required this.animate,
    required this.delayMultiplier,
    super.key,
  });
  final Widget child;
  final bool animate;
  final int delayMultiplier;

  @override
  Widget build(BuildContext context) {
    if (animate) {
      return FadeInLeft(
        animate: animate,
        duration: const Duration(milliseconds: 300),
        delay: Duration(milliseconds: 10 * delayMultiplier),
        child: child,
      );
    }
    return child;
  }
}
