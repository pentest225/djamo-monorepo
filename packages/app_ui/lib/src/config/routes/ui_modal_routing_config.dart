import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class UIModalRoutingConfig {
  const UIModalRoutingConfig({
    required this.onPushModalSheet,
    required this.onPopModalSheet,
    required this.canPopModalSheet,
  });

  @internal
  static const path = 'UIMODAL';

  @internal
  static String genPath(String? name) {
    if (name != null && name.isNotEmpty) {
      return '$path:$name'.replaceAll('/', ':');
    }
    return path;
  }

  final Future<T?> Function<T extends Object?>(BuildContext, ModalBottomSheetRoute<T>)? onPushModalSheet;

  final Future<bool> Function<T extends Object?>(BuildContext, T? result)? onPopModalSheet;

  /// Returns `true` if the modal sheet can be popped, `false` otherwise.
  /// defaultUIModalPath is the default path for the modal sheet.
  final bool Function(BuildContext, String defaultUIModalPath)? canPopModalSheet;

  bool isModalOpened(BuildContext context) {
    return canPopModalSheet?.call(context, path) ?? false;
  }

  static const empty = UIModalRoutingConfig(
    onPushModalSheet: null,
    onPopModalSheet: null,
    canPopModalSheet: null,
  );
}
