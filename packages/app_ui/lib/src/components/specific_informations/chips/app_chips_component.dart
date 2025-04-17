import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

part '_choice_chip_component.dart';
part '_filter.dart';
part '_input_chip_button_component.dart';
part '_input_chip_component.dart';
part '_input_chip_switch_avatar_component.dart';

abstract class AppChipsComponent extends StatelessWidget {
  const AppChipsComponent({
    required this.labelText,
    required this.selected,
    this.onSelected,
    this.label,
    this.onDeleted,
    this.onPressed,
    this.selectedForegroundColor,
    this.backgroundColor,
    this.selectedColor,
    this.showCheckmark,
    this.elevation,
    this.avatarWidget,
    this.activeAvatarIcon,
    this.disableAvatarIcon,
    this.avatarIcon,
    this.trailingIcon,
    super.key,
  });

  const factory AppChipsComponent.choiceChip({
    required String labelText,
    required ValueChanged<bool?> onSelected,
    required bool selected,
    Widget? label,
    Color? backgroundColor,
    Color? selectedColor,
    Widget? avatarWidget,
    bool? showCheckmark,
    AppAssetBuilder? avatarIcon,
    double? elevation,
    Key? key,
  }) = _ChoiceChipComponent;

  const factory AppChipsComponent.inputChip({
    required String labelText,
    required bool selected,
    void Function()? onDeleted,
    ValueChanged<bool?>? onSelected,
    Widget? label,
    Color? selectedForegroundColor,
    Color? backgroundColor,
    Color? selectedColor,
    Widget? avatarWidget,
    bool? showCheckmark,
    AppAssetBuilder? avatarIcon,
    AppAssetBuilder? trailingIcon,
    double? elevation,
    BorderSide? borderSide,
    Key? key,
  }) = _InputChipComponent;

  const factory AppChipsComponent.inputChipButton({
    required String labelText,
    required void Function() onPressed,
    bool selected,
    Color? backgroundColor,
    Color? selectedColor,
    Widget? avatarWidget,
    AppAssetBuilder? avatarIcon,
    AppAssetBuilder? trailingIcon,
    Key? key,
  }) = _InputChipButtonComponent;

  const factory AppChipsComponent.inputChipSwithAvatar({
    required String labelText,
    required ValueChanged<bool?> onSelected,
    required bool selected,
    required AppAssetBuilder activeAvatarIcon,
    required AppAssetBuilder disableAvatarIcon,
    void Function()? onDeleted,
    Color? backgroundColor,
    Color? selectedColor,
    double? elevation,
    Key? key,
  }) = _InputChipSwithAvatarComponent;

  const factory AppChipsComponent.filter({
    required String labelText,
    required bool selected,
    ValueChanged<bool?> onSelected,
    Color? backgroundColor,
    Color? selectedColor,
    bool? showCheckmark,
    double? elevation,
    Widget? avatarWidget,
    AppAssetBuilder? avatarIcon,
    Key? key,
  }) = _Filter;

  final String labelText;
  final Widget? label;
  final bool? selected;
  final ValueChanged<bool?>? onSelected;
  final void Function()? onPressed;
  final void Function()? onDeleted;
  final Color? selectedForegroundColor;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Widget? avatarWidget;
  final AppAssetBuilder? avatarIcon;
  final AppAssetBuilder? trailingIcon;
  final AppAssetBuilder? activeAvatarIcon;
  final AppAssetBuilder? disableAvatarIcon;
  final bool? showCheckmark;
  final double? elevation;
}
