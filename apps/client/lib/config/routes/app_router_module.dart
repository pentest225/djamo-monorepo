import 'package:auto_route/auto_route.dart';
import 'app_router_module.gr.dart';

@AutoRouterConfig()
class AppRouteModule extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
      AutoRoute(page: AppSplashRoute.page, initial: true),
  ];
}