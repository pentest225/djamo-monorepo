import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_avatar.dart';
part '_builder.dart';
part '_icon.dart';
part '_monogram.dart';
part '_picture.dart';

abstract class AppIdentityTagComponent extends StatelessWidget {
  const AppIdentityTagComponent({
    super.key,
    this.label,
    this.leftBadge,
    this.rightBadge,
    this.onPressed,
    this.size,
  });

  const factory AppIdentityTagComponent.avatar({
    Key? key,
    String? label,
    AppAssetBuilder? leftBadge,
    AppAssetBuilder? rightBadge,
    VoidCallback? onPressed,
    double? size,
  }) = _Avatar;

  const factory AppIdentityTagComponent.monogram({
    required String monogram,
    Key? key,
    String? label,
    AppAssetBuilder? leftBadge,
    AppAssetBuilder? rightBadge,
    VoidCallback? onPressed,
    double? size,
    Color? monogramColor,
    Color? backgroundColor,
  }) = _Monogram;

  const factory AppIdentityTagComponent.picture({
    required String imageUrl,
    Key? key,
    String? label,
    AppAssetBuilder? leftBadge,
    AppAssetBuilder? rightBadge,
    VoidCallback? onPressed,
    Map<String, String>? httpHeaders,
    double? size,
    BoxFit? fit,
  }) = _Picture;

  const factory AppIdentityTagComponent.icon({
    required AppAssetBuilder icon,
    Key? key,
    String? label,
    AppAssetBuilder? leftBadge,
    AppAssetBuilder? rightBadge,
    VoidCallback? onPressed,
    double? size,
  }) = _Icon;

  final String? label;

  /// Prefer using [AppAssetBuilder.image], [AppAssetBuilder.network] or [AppAssetBuilder.svg].
  final AppAssetBuilder? leftBadge;

  /// Prefer using [AppAssetBuilder.image], [AppAssetBuilder.network] or [AppAssetBuilder.svg].
  final AppAssetBuilder? rightBadge;
  final VoidCallback? onPressed;
  final double? size;
}
