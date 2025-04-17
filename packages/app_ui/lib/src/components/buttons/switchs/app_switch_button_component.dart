import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_builder.dart';
part '_switch_basic.dart';
part '_switch_with_icon.dart';

abstract class AppSwitchButtonComponent extends StatelessWidget {
  const AppSwitchButtonComponent({
    required this.isSelected,
    this.trackColor,
    this.onChanged,
    super.key,
    this.iconSelected,
    this.iconDisabled,
    this.disabledBackgroundColor,
  });

  const factory AppSwitchButtonComponent.basic({
    required bool isSelected,
    Color? trackColor,
    ValueChanged<bool> onChanged,
    Color? disabledBackgroundColor,
  }) = _SwitchBasic;

  const factory AppSwitchButtonComponent.icon({
    required bool isSelected,
    Color? trackColor,
    ValueChanged<bool> onChanged,
    IconData? iconSelected,
    IconData? iconDisabled,
    Color? disabledBackgroundColor,
  }) = _SwitchWithIcon;

  final bool isSelected;
  final Color? trackColor;
  final ValueChanged<bool>? onChanged;
  final IconData? iconSelected;
  final IconData? iconDisabled;
  final Color? disabledBackgroundColor;
}
