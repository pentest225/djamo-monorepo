import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Hook to pop until dashboard.
/// Not always useful if your routes stacker is not well managed.
void usePopUntilDashboard(BuildContext context) {
  context.router.popUntilRouteWithName('dashboard');
}
