import 'package:auto_route/auto_route.dart';

extension TabsRouterX on TabsRouter? {
  void nextRoute({void Function()? onCompleted}) {
    final router = this;
    if (router == null) {
      return;
    }
    if (router.activeIndex >= router.pageCount - 1) {
      onCompleted?.call();
      return;
    }
    router.setActiveIndex(router.activeIndex + 1);
  }

  void prevRoute({void Function()? onCompleted}) {
    final router = this;
    if (router == null) {
      return;
    }
    if (router.activeIndex <= 0) {
      return;
    }
    router.setActiveIndex(router.activeIndex - 1);
    onCompleted?.call();
  }
}
