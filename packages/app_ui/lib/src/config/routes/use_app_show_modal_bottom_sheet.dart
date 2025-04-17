import 'package:app_ui/src/config/app_ui_config_provider.dart';
import 'package:app_ui/src/config/routes/ui_modal_routing_config.dart';
import 'package:app_ui/src/core/hooks/use_return_value.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

Future<T?> useAppShowModalBottomSheet<T extends Object?>(
  BuildContext context, {
  required Widget Function(BuildContext) builder,
  ShapeBorder? shape,
  bool isScrollControlled = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool showDragHandle = true,
  bool useRootNavigator = false,
  bool useSafeArea = false,
  RouteSettings? routeSettings,
}) {
  final $shape = useReturnValue(() {
    if (shape != null) {
      return shape;
    }
    return context.theme.bottomSheetTheme.shape;
  });
  final $routeSettings = RouteSettings(
    name: UIModalRoutingConfig.genPath(routeSettings?.name?.orNull ?? '${DateTime.now().millisecondsSinceEpoch}'),
    arguments: routeSettings?.arguments,
  );
  final onModalSheetPushed = context.appUIConfig.modalRoutingConfig.onPushModalSheet;
  if (onModalSheetPushed != null) {
    return onModalSheetPushed<T>(
      context,
      ModalBottomSheetRoute(
        builder: builder,
        shape: $shape,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        isScrollControlled: isScrollControlled,
        showDragHandle: showDragHandle,
        settings: $routeSettings,
        useSafeArea: true,
      ),
    );
  }
  return showModalBottomSheet(
    context: context,
    builder: builder,
    shape: $shape,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    routeSettings: $routeSettings,
    useRootNavigator: useRootNavigator,
    useSafeArea: useSafeArea,
  );
}
