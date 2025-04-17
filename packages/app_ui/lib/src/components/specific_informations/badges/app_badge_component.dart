import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/core/hooks/hooks.dart';
import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';

part '_basic_badge.dart';
part '_service_icon_badge.dart';

abstract class AppBadgeComponent extends StatelessWidget {
  const AppBadgeComponent({
    required this.child,
    super.key,
    this.badgeContent,
    this.badgeColor,
    this.showBadge = true,
    this.isServiceBadge = false,
  });

  const factory AppBadgeComponent.basicBadge({
    required Widget child,
    bool showBadge,
    String? badgeContent,
    Color? badgeColor,
  }) = _BasicBadge;

  const factory AppBadgeComponent.serviceIconBadge({
    required Widget child,
    bool showBadge,
    String? badgeContent,
    Color? badgeColor,
  }) = _ServiceIconBadge;

  final Widget child;
  final String? badgeContent;
  final Color? badgeColor;
  final bool showBadge;
  final bool isServiceBadge;
}
