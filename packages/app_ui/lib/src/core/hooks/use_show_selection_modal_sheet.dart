import 'package:app_ui/src/src.dart';
import 'package:flutter/material.dart';

/// Use Show Selection Modal Sheet
@Deprecated('Use useShowSelectionBottomSheet instead')
Future<SelectionItem?> useShowSelectionModalSheet({
  required BuildContext context,
  required String modalDescription,
  required SelectionItems items,
  String initialSelectedIdentifier = '',
  bool useRootNavigator = true,
  bool centerHeader = false,
  Widget Function(BuildContext, SelectionItem)? itemBuilder,
  Widget Function(BuildContext, int)? customItemBuilder,
  String? modalHintText,
  String? modalTitle,
}) async {
  return showModalBottomSheet<SelectionItem>(
    context: context,
    useRootNavigator: useRootNavigator,
    builder: (context) {
      return AppBottomModalSheetView.selection(
        title: modalTitle ?? context.l10n.onboardingGender('other'),
        centerHeader: centerHeader,
        hintText: modalHintText,
        description: modalDescription,
        initialIdentifier: initialSelectedIdentifier,
        items: items,
        customItemBuilder: customItemBuilder,
      );
    },
  );
}
