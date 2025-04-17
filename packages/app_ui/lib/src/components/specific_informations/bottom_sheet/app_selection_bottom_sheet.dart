import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/core/types/modal_bottom_sheet_context_callback.dart';
import 'package:flutter/cupertino.dart';
import 'package:petit_extension/petit_extension.dart';

typedef SetSelectedItemCallback<T> = T? Function(int index, T? item);
typedef SelectionItemsBuilder<T> = List<Widget> Function(
  BuildContext context,
  T? selectedItem,
  SetSelectedItemCallback<T> set,
  HideBottomSheetCallback<T> hide,
);

Future<T?> useShowReactiveSelectionBottomSheet<T extends Object>(
  BuildContext context, {
  /// The builder for the selection items.
  /// selectedIndex is the index of the selected item.
  /// set is a callback to set the selected item.
  /// hide is a callback to hide the bottom sheet
  required SelectionItemsBuilder<T> items,
  required String title,

  /// The length of the items.
  /// This is used to determine the height of the bottom sheet.
  required int length,
  T? initialValue,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  void Function(BuildContext, HideBottomSheetCallback<T> hide)? onPrimaryCTAPressed,
  void Function(BuildContext, HideBottomSheetCallback<T> hide)? onSecondaryCTAPressed,
  bool usePrimaryCTA = true,
  bool useSecondaryStyleForPrimaryCTA = false,
  bool isScrollControlled = true,
  String name = '',
  Color? secondaryCTAForegroundColor,
}) {
  assert(length > 0, 'Length must be greater than 0');
  return useAppShowModalBottomSheet(
    context,
    isScrollControlled: isScrollControlled,
    routeSettings: RouteSettings(name: "SELECTION${name.orNull == null ? '' : ":$name"}"),
    builder: (context) {
      if (length <= 5 || !isScrollControlled) {
        return AppSelectionBottomSheet<T>(
          title: title,
          item: items,
          primaryCTALabel: primaryCTALabel,
          onPrimaryCTAPressed: onPrimaryCTAPressed,
          usePrimaryCTA: usePrimaryCTA,
          useSecondaryStyleForPrimaryCTA: useSecondaryStyleForPrimaryCTA,
          initialValue: initialValue,
          itemLength: length,
          secondaryCTALabel: secondaryCTALabel,
          onSecondaryCTAPressed: onSecondaryCTAPressed,
          secondaryCTAForegroundColor: secondaryCTAForegroundColor,
        );
      }
      return FractionallySizedBox(
        heightFactor: .785,
        child: AppSelectionBottomSheet<T>(
          title: title,
          item: items,
          primaryCTALabel: primaryCTALabel,
          onPrimaryCTAPressed: onPrimaryCTAPressed,
          usePrimaryCTA: usePrimaryCTA,
          useSecondaryStyleForPrimaryCTA: useSecondaryStyleForPrimaryCTA,
          initialValue: initialValue,
          itemLength: length,
          secondaryCTALabel: secondaryCTALabel,
          onSecondaryCTAPressed: onSecondaryCTAPressed,
          isScrollable: true,
          secondaryCTAForegroundColor: secondaryCTAForegroundColor,
        ),
      );
    },
  );
}

class AppSelectionBottomSheet<T extends Object> extends StatefulWidget {
  const AppSelectionBottomSheet({
    required this.title,
    required this.item,
    required this.itemLength,
    super.key,
    this.primaryCTALabel,
    this.onPrimaryCTAPressed,
    this.usePrimaryCTA = false,
    this.useSecondaryStyleForPrimaryCTA = false,
    this.initialValue,
    this.secondaryCTALabel,
    this.onSecondaryCTAPressed,
    this.isScrollable = false,
    this.secondaryCTAForegroundColor,
  });

  final String title;

  /// The builder for the selection items.
  /// selectedIndex is the index of the selected item.
  /// set is a callback to set the selected item.
  /// hide is a callback to hide the bottom sheet.
  final SelectionItemsBuilder<T> item;
  final String? primaryCTALabel;
  final bool usePrimaryCTA;
  final bool useSecondaryStyleForPrimaryCTA;
  final T? initialValue;
  final int itemLength;
  final String? secondaryCTALabel;
  final void Function(BuildContext, HideBottomSheetCallback<T> hide)? onPrimaryCTAPressed;
  final void Function(BuildContext, HideBottomSheetCallback<T> hide)? onSecondaryCTAPressed;
  final bool isScrollable;
  final Color? secondaryCTAForegroundColor;

  @override
  State<AppSelectionBottomSheet<T>> createState() => _AppSelectionBottomSheetState<T>();
}

class _AppSelectionBottomSheetState<T extends Object> extends State<AppSelectionBottomSheet<T>> {
  int? _selectedIndex;
  T? _selectedItem;

  T? _setSelectedItem(int index, T? item) {
    setState(() {
      _selectedIndex = index;
      _selectedItem = item;
    });
    return _selectedItem;
  }

  Future<bool> _onHide(BuildContext context, T? result) async {
    return useAppPopModalBottomSheet(context, result: result);
  }

  @override
  void initState() {
    _selectedItem = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hasSecondaryCTA = widget.onSecondaryCTAPressed != null && widget.secondaryCTALabel != null;
    final items = widget.item(context, _selectedItem, _setSelectedItem, ([r]) {
      return _onHide(context, r);
    });
    return SafeArea(
      child: Padding(
        padding: AppPaddings.s24.horizontal.copyWith(
          bottom: AppSizes.h.s16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.title.isNotEmpty) ...[
              AppHeadlineComponent.largeSingleText(
                header: widget.title,
                textAlign: TextAlign.center,
              ),
              AppGaps.ver.s24,
            ],
            if (widget.itemLength >= 6 || widget.isScrollable) ...[
              Expanded(
                child: CupertinoScrollbar(
                  child: AppListViewComponent.list(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final r = items.elementAt(index);
                      return SizedBox(
                        key: ValueKey('$index:${widget.key}:$_selectedIndex'),
                        child: r,
                      );
                    },
                  ),
                ),
              ),
            ] else ...[
              CupertinoScrollbar(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableBouncingPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: items.mapIndexed((index, w) {
                      return SizedBox(
                        key: ValueKey('$index:${widget.key}:$_selectedIndex'),
                        child: w,
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
            if (widget.usePrimaryCTA) ...[
              Padding(
                padding: AppPaddings.s16.top.copyWith(
                  bottom: AppSizes.h.s8,
                ),
                child: AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
                  key: const Key('selection_bottom_sheet_primary_cta'),
                  isEnabled: _selectedIndex != null || _selectedItem != null,
                  label: widget.primaryCTALabel ?? context.l10n.continueLabel,
                  onPressed: () {
                    _onHide(context, _selectedItem);
                  },
                ),
              ),
            ] else if (widget.onPrimaryCTAPressed != null) ...[
              Padding(
                padding: AppPaddings.s16.top.copyWith(
                  bottom: AppSizes.h.s8,
                ),
                child: switch (widget.useSecondaryStyleForPrimaryCTA) {
                  true => AppBottomFillingCtaButtonComponent.singleSecondaryFillingButtonCta(
                      label: widget.primaryCTALabel ?? context.l10n.continueLabel,
                      onPressed: () {
                        widget.onPrimaryCTAPressed?.call(context, ([r]) {
                          return _onHide(context, r);
                        });
                      },
                    ),
                  _ => AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
                      label: widget.primaryCTALabel ?? context.l10n.continueLabel,
                      onPressed: () {
                        widget.onPrimaryCTAPressed?.call(context, ([r]) {
                          return _onHide(context, r);
                        });
                      },
                    ),
                },
              ),
            ],
            if (hasSecondaryCTA) ...[
              AppBottomFillingCtaButtonComponent.singleSecondaryFillingButtonCta(
                key: const Key('selection_bottom_sheet_secondary_cta'),
                label: widget.secondaryCTALabel!,
                foregroundColor: widget.secondaryCTAForegroundColor,
                onPressed: () {
                  widget.onSecondaryCTAPressed?.call(context, ([r]) {
                    return _onHide(context, r);
                  });
                },
              ),
              AppGaps.ver.s8,
            ],
          ],
        ),
      ),
    );
  }
}
