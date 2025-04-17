import 'package:flutter/material.dart';

/// Disables the glowing effect when the user scrolls.
class DisableGlowingScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
