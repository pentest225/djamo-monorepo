import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppTopBarComponent extends AppBar {
  AppTopBarComponent(
    this.context, {
    this.titleText,
    this.customTitle,
    super.key,
    super.leading,
    super.leadingWidth,
    super.automaticallyImplyLeading = true,
    super.centerTitle = false,
    super.actions,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.titleSpacing = 0,
    super.systemOverlayStyle,
  }) : super(
          title: customTitle ??
              (titleText == null
                  ? null
                  : AppTextComponent.titleLarge(
                      titleText,
                      color: foregroundColor,
                    )),
          elevation: 0,
          forceMaterialTransparency: false,
          toolbarHeight: AppSizes.h.s64,
        );

  factory AppTopBarComponent.withAvatar(
    BuildContext context, {
    /// Prefer use [AppIdentityTagComponent] or [AppAssetBuilder.image] builder.
    required Widget avatar,
    VoidCallback? onAvatarPressed,
    String? appBarTitle,
    List<Widget>? actions,
    bool automaticallyImplyLeading = true,
    Color? backgroundColor,
    double titleSpacing = 0,
  }) =>
      AppTopBarComponent(
        context,
        titleText: appBarTitle,
        leadingWidth: AppSizes.w.s80,
        leading: Row(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: onAvatarPressed,
              child: avatar,
            ),
          ],
        ),
        automaticallyImplyLeading: automaticallyImplyLeading,
        actions: actions,
        backgroundColor: backgroundColor,
        titleSpacing: titleSpacing,
      );

  factory AppTopBarComponent.business(
    BuildContext context, {
    Widget? leading,
    List<Widget>? actions,
    bool automaticallyImplyLeading = true,
    Color? backgroundColor,
    double titleSpacing = 0,
  }) =>
      AppTopBarComponent(
        context,
        leading: leading,
        customTitle: Assets.images.djamoBusinessLogo.image(
          height: AppSizes.h.s32,
        ),
        automaticallyImplyLeading: automaticallyImplyLeading,
        actions: actions,
        backgroundColor: backgroundColor,
        titleSpacing: titleSpacing,
      );
  factory AppTopBarComponent.displayStepNumber(
    BuildContext context, {
    int stepNumber = 3,
    String? appBarTitle,
    Widget? leading,
    bool automaticallyImplyLeading = true,
    Color? backgroundColor,
    double titleSpacing = 0,
  }) {
    final steps = List.generate(
      stepNumber.clamp(1, 3),
      (index) {
        final svgAsset = [
          Assets.icons.oneStepNumber,
          Assets.icons.twoStepNumber,
          Assets.icons.threeStepNumber,
        ][index];
        return Padding(
          padding: index == stepNumber - 1 ? AppPaddings.zero.all : AppPaddings.s24.right,
          child: AppAssetBuilder.svg(
            svg: svgAsset,
            config: AssetBuilderConfig(
              svgColor: context.customColorScheme.content,
            ),
          ),
        );
      },
    );

    return AppTopBarComponent(
      context,
      titleText: appBarTitle,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: [
        Padding(
          padding: AppPaddings.s16.right,
          child: Row(children: steps),
        ),
      ],
      backgroundColor: backgroundColor,
      titleSpacing: titleSpacing,
    );
  }
  final BuildContext context;
  final String? titleText;
  final Widget? customTitle;
}
