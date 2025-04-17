import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_outlined.dart';
part '_primary.dart';
part '_standard.dart';
part '_tonal.dart';

abstract class AppIconButtonComponent extends StatelessWidget {
  const AppIconButtonComponent({
    required this.icon,
    this.isEnabled = true,
    this.onPressed,
    super.key,
  });

  /// A standard icon button.
  const factory AppIconButtonComponent.standard({
    required AppAssetBuilder icon,
    bool? isEnabled,
    void Function()? onPressed,
    Key? key,
  }) = _Standard;

  /// A primary icon button.
  const factory AppIconButtonComponent.primary({
    required AppAssetBuilder icon,
    bool? isEnabled,
    void Function()? onPressed,
    Key? key,
  }) = _Primary;

  /// A tonal icon button.
  const factory AppIconButtonComponent.tonal({
    required AppAssetBuilder icon,
    bool? isEnabled,
    void Function()? onPressed,
    Key? key,
  }) = _Tonal;

  /// An outlined icon button.
  const factory AppIconButtonComponent.outlined({
    required AppAssetBuilder icon,
    bool? isEnabled,
    void Function()? onPressed,
    Key? key,
  }) = _Outlined;

  final AppAssetBuilder icon;
  final bool? isEnabled;
  final void Function()? onPressed;
}
