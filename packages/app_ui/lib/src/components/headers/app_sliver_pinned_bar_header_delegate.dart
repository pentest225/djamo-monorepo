import 'dart:math';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class SliverPinnedBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  const SliverPinnedBarHeaderDelegate({
    required this.child,
    required this.minHeight,
    required this.maxHeight,
    this.backgroundColor,
  });

  final Color? backgroundColor;
  final Widget child;
  final double minHeight;
  final double maxHeight;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: ColoredBox(
        color: backgroundColor ?? context.colorScheme.surfaceContainerLowest,
        child: child,
      ),
    );
  }

  @override
  double get maxExtent => max(minHeight, maxHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPinnedBarHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child;
  }
}
