import 'package:app_ui/src/config/app_ui_config_provider.dart';
import 'package:app_ui/src/config/routes/ui_modal_routing_config.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@useResult
Future<bool> useAppPopModalBottomSheet<T extends Object?>(
  BuildContext context, {
  T? result,
  bool rootNavigator = false,
  bool shouldForcePop = false,
}) {
  final onPopModalSheet = context.appUIConfig.modalRoutingConfig.onPopModalSheet;
  final canPopModalSheet = context.appUIConfig.modalRoutingConfig.canPopModalSheet;
  Future<bool> pop() {
    if (onPopModalSheet != null) {
      return onPopModalSheet<T>(context, result);
    }
    Navigator.of(context, rootNavigator: rootNavigator).pop(result);
    return Future.value(true);
  }

  if (canPopModalSheet == null) {
    return pop();
  }
  if (canPopModalSheet(context, UIModalRoutingConfig.path) || shouldForcePop) {
    return pop();
  }
  return Future.value(false);
}
