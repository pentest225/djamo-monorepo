import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class AppScaffoldComponent extends StatelessWidget {
  factory AppScaffoldComponent({
    required double horizontalPadding,
    required Widget body,
    PreferredSizeWidget? appBar,
    Widget? drawer,
    Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    bool bottomSafeArea = true,
    Brightness? statusBarIconBrightness,
    Widget? indicator,
    Key? key,
  }) {
    return AppScaffoldComponent._(
      horizontalPadding: horizontalPadding,
      appBar: appBar,
      body: body,
      drawer: drawer,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      bottomSafeArea: bottomSafeArea,
      statusBarIconBrightness: statusBarIconBrightness,
      indicator: indicator,
      key: key,
    );
  }

  factory AppScaffoldComponent.withBottomNavigationBar({
    required double horizontalPadding,
    required Widget body,
    required Widget bottomNavigationBar,
    PreferredSizeWidget? appBar,
    Widget? drawer,
    Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    bool bottomSafeArea = true,
    Brightness? statusBarIconBrightness,
    Widget? indicator,
    Key? key,
  }) {
    return AppScaffoldComponent._(
      horizontalPadding: horizontalPadding,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      bottomSafeArea: bottomSafeArea,
      statusBarIconBrightness: statusBarIconBrightness,
      indicator: indicator,
      key: key,
    );
  }

  factory AppScaffoldComponent.withFooter({
    required double horizontalPadding,
    required Widget body,

    /// The persistent footer buttons to display in the scaffold.
    /// Typically this would be a list of [AppBottomFillingCtaButtonComponent].
    required List<Widget> footer,
    PreferredSizeWidget? appBar,
    Widget? drawer,
    Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    bool bottomSafeArea = true,
    Brightness? statusBarIconBrightness,
    Widget? indicator,
    Key? key,
    EdgeInsetsGeometry? footerPadding,
  }) {
    return AppScaffoldComponent._(
      horizontalPadding: horizontalPadding,
      appBar: appBar,
      body: body,
      footer: footer,
      drawer: drawer,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      statusBarIconBrightness: statusBarIconBrightness,
      bottomSafeArea: bottomSafeArea,
      indicator: indicator,
      key: key,
      footerPadding: footerPadding,
    );
  }

  const AppScaffoldComponent._({
    required this.horizontalPadding,
    required this.body,
    this.footer = const [],
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.appBar,
    this.drawer,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.statusBarIconBrightness,
    this.bottomSafeArea = true,
    super.key,
    this.indicator,
    this.footerPadding,
  });

  final double horizontalPadding;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final List<Widget> footer;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final Brightness? statusBarIconBrightness;
  final bool bottomSafeArea;
  final Widget? indicator;
  final EdgeInsetsGeometry? footerPadding;

  bool get _hasFooter => footer.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final bg = backgroundColor ?? context.customColorScheme.contentLowest;
    final systemOverlayStyle = context.theme.appBarTheme.copyWith(
      systemOverlayStyle: context.theme.appBarTheme.systemOverlayStyle?.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: bg,
        statusBarIconBrightness: statusBarIconBrightness ?? (bg.isNearLight ? Brightness.dark : Brightness.light),
        statusBarBrightness: statusBarIconBrightness ?? (bg.isNearLight ? Brightness.dark : Brightness.light),
        systemStatusBarContrastEnforced: true,
      ),
    );
    if (_hasFooter) {
      return AnnotatedRegion(
        value: systemOverlayStyle,
        child: Scaffold(
          appBar: appBar,
          body: SafeArea(
            bottom: bottomSafeArea,
            child: Column(
              children: [
                if (indicator != null) ...[
                  AppGaps.ver.custom(1),
                  indicator!,
                  AppGaps.ver.s8,
                ],
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: Column(
                      children: [
                        Expanded(child: body),
                        Padding(
                          padding: footerPadding ??
                              AppPaddings.s16.top.copyWith(
                                bottom: AppSizes.h.s24,
                              ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ...footer,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          drawer: drawer,
          backgroundColor: backgroundColor,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          extendBody: extendBody,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
        ),
      );
    }
    return AnnotatedRegion(
      value: systemOverlayStyle,
      child: Scaffold(
        appBar: appBar,
        body: SafeArea(
          bottom: bottomSafeArea,
          child: Column(
            children: [
              if (indicator != null) ...[
                indicator!,
                AppGaps.ver.s8,
              ],
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                  ),
                  child: body,
                ),
              ),
            ],
          ),
        ),
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        extendBody: extendBody,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
      ),
    );
  }
}
