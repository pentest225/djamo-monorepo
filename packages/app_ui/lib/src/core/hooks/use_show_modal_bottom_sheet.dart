import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

@Deprecated('Use useAppShowModalBottomSheet instead')
Future<T?> useShowModalBottomSheet<T extends Object?>(
  BuildContext context, {
  required Widget Function(BuildContext) builder,
  required String routeName,
  bool isDismissible = true,
  bool hidePrevious = false,
  bool enableDrag = false,
  bool useSafeArea = false,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool showDragHandle = true,
  void Function(BuildContext)? onClosePressed,
}) async {
  if (hidePrevious) {
    useAppPopModalBottomSheet<void>(context).ignore();
  }
  return useAppShowModalBottomSheet<T>(
    context,
    isScrollControlled: isScrollControlled,
    enableDrag: enableDrag && isDismissible,
    isDismissible: isDismissible,
    showDragHandle: showDragHandle,
    useRootNavigator: useRootNavigator,
    useSafeArea: useSafeArea,
    routeSettings: RouteSettings(name: routeName),
    builder: builder,
  );
}
