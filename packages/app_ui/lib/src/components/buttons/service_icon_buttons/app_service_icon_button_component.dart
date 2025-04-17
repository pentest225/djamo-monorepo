import 'package:app_ui/src/components/buttons/buttons.dart';
import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_service_icon_button_primary.dart';
part '_service_icon_button_tonal.dart';

abstract class AppServiceIconButtonComponent extends StatelessWidget {
  const AppServiceIconButtonComponent({
    required this.label,
    required this.icon,
    this.isEnabled = true,
    this.onPressed,
    super.key,
  });

  const factory AppServiceIconButtonComponent.tonal({
    required String label,
    required AppAssetBuilder icon,
    bool? isEnabled,
    void Function()? onPressed,
  }) = _ServiceIconButtonTonal;

  const factory AppServiceIconButtonComponent.primary({
    required String label,
    required AppAssetBuilder icon,
    bool? isEnabled,
    void Function()? onPressed,
  }) = _ServiceIconButtonPrimary;

  final String label;
  final AppAssetBuilder icon;
  final bool? isEnabled;
  final void Function()? onPressed;
}
