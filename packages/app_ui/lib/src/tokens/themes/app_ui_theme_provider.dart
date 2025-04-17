import 'package:app_ui/app_ui.dart';
import 'package:flutter/widgets.dart';

///AppUIThemeModeProvider
class AppUIThemeProvider extends InheritedModel<AppTheme> {
  AppUIThemeProvider({
    required this.builder,
    required this.appTheme,
    super.key,
  }) : super(child: builder(appTheme));

  final AppTheme appTheme;
  final Widget Function(AppTheme theme) builder;

  static AppUIThemeProvider of(BuildContext context) {
    final result = maybeOf(context);
    assert(result != null, 'Unable to find an instance of AppUIThemeProvider...');
    return result!;
  }

  static AppUIThemeProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppUIThemeProvider>();
  }

  static AppTheme getCurrentTheme(BuildContext context) {
    final theme = maybeOf(context);
    return theme?.appTheme ?? AppTheme.clientLight(context);
  }

  @override
  bool updateShouldNotifyDependent(
    covariant InheritedModel<AppTheme> oldWidget,
    Set<AppTheme> dependencies,
  ) {
    return dependencies.contains(appTheme);
  }

  @override
  bool updateShouldNotify(AppUIThemeProvider oldWidget) {
    return appTheme != oldWidget.appTheme;
  }
}
