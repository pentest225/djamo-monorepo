import 'package:app_ui/src/config/routes/use_app_pop_modal_bottom_sheet.dart' show useAppPopModalBottomSheet;
import 'package:app_ui/src/config/routes/use_app_show_modal_bottom_sheet.dart';
import 'package:app_ui/src/modules/common/views/app_bottom_modal_sheet_view.dart';
import 'package:flutter/material.dart';

/// Hook to show success modal sheet.
@Deprecated('Use useShowInformationBottomSheet instead')
Future<void> useShowSuccessModalSheet({
  required BuildContext context,
  required String message,
  required String title,
  required String primaryCTALabel,
  required String secondaryCTALabel,
  String? name,
  void Function(BuildContext, VoidCallback hide)? onPrimaryCTAPressed,
  void Function(BuildContext, VoidCallback hide)? onSecondaryCTAPressed,
  bool useRootNavigator = true,
  bool alignCTAsHorizontally = false,
  bool isDismissible = false,
  bool isScrollControlled = true,
  bool hidePrevious = false,
}) {
  if (!context.mounted) return Future.value();
  if (hidePrevious) {
    useAppPopModalBottomSheet<void>(context).ignore();
  }
  return useAppShowModalBottomSheet(
    context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    enableDrag: false,
    routeSettings: RouteSettings(name: 'success/$name'),
    builder: (_) {
      return AppBottomModalSheetView.success(
        title: title,
        description: message,
        primaryCTALabel: primaryCTALabel,
        alignCTAsHorizontally: alignCTAsHorizontally,
        onPrimaryCTAPressed: (context) {
          onPrimaryCTAPressed?.call(
            context,
            () {
              useAppPopModalBottomSheet<void>(context).ignore();
            },
          );
        },
        secondaryCTALabel: secondaryCTALabel,
        onSecondaryCTAPressed: (context) {
          onSecondaryCTAPressed?.call(
            context,
            () {
              useAppPopModalBottomSheet<void>(context).ignore();
            },
          );
        },
      );
    },
  );
}
