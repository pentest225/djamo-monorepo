import 'package:app_ui/src/config/routes/use_app_pop_modal_bottom_sheet.dart';
import 'package:app_ui/src/config/routes/use_app_show_modal_bottom_sheet.dart';
import 'package:app_ui/src/modules/common/views/views.dart';
import 'package:flutter/material.dart';

@Deprecated('Use useShowInformationBottomSheet instead')
Future<void> useShowModalSheetWithIllustration(
  BuildContext context, {
  required String message,
  required String title,
  required String primaryCTALabel,
  required Widget illustration,
  required void Function(BuildContext, VoidCallback hide) onPrimaryCTAPressed,
  Widget? middleWidget,
  String? secondaryCTALabel,
  void Function(BuildContext, VoidCallback hide)? onSecondaryCTAPressed,
  bool isDismissible = true,
  bool useRootNavigator = true,
  bool alignCTAsHorizontally = false,
  bool isScrollControlled = false,
  Color? primaryCTABackgroundColor,
  Color? secondaryCTABackgroundColor,
  String? routeName,
}) async {
  return useAppShowModalBottomSheet<void>(
    context,
    isDismissible: isDismissible,
    enableDrag: isDismissible,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    routeSettings: routeName != null ? RouteSettings(name: routeName) : null,
    builder: (_) {
      return AppBottomModalSheetView(
        title: title,
        description: message,
        illustrationWidget: illustration,
        primaryCTALabel: primaryCTALabel,
        alignCTAsHorizontally: alignCTAsHorizontally,
        middleWidget: middleWidget,
        primaryCTABackgroundColor: primaryCTABackgroundColor,
        onPrimaryCTAPressed: (context) {
          onPrimaryCTAPressed.call(
            context,
            () {
              useAppPopModalBottomSheet<void>(context).ignore();
            },
          );
        },
        secondaryCTALabel: secondaryCTALabel,
        onSecondaryCTAPressed: onSecondaryCTAPressed == null
            ? null
            : (context) {
                onSecondaryCTAPressed.call(
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
