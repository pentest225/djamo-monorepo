import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppAutoRouteObserver extends AutoRouterObserver {
  void _logRoute(Route<dynamic>? previousRoute, Route<dynamic>? route) {
    final previous = previousRoute != null ? '🚧 - Previous Route : \n\t\t\tName: ${previousRoute.settings.name}\n\t\t\tPath: ${previousRoute.data?.path}' : '';
    final current = route != null ? '🚀 - Pushed Route : \n\t\t\tName: ${route.settings.name}\n\t\t\tPath: ${route.data?.path}' : '🚧 - No route pushed';
    log('🚦- AppAutoRouteObserverIn');
    if (previous.isNotEmpty) {
      log('\t\t$previous');
    }
    log('\t\t$current');
    log('🚦- AppAutoRouteObserverOut');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logRoute(previousRoute, route);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logRoute(route, previousRoute);
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _logRoute(oldRoute, newRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log('${previousRoute != null ? 'Previous Tab : ${previousRoute.path} - ' : ''}Visited Tab: ${route.path}');
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Previous Tab : ${previousRoute.path} - Re-visited Tab: ${route.path}');
    super.didChangeTabRoute(route, previousRoute);
  }
}
