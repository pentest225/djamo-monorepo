import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part '_builder.dart';
part '_confirmation_bottom_sheet.dart';
part '_custom_bottom_sheet.dart';
part '_information_bottom_sheet.dart';
part '_input_text_field_bottom_sheet.dart';
part '_pending_bottom_sheet.dart';
part '_selection_bottom_sheet.dart';

abstract class AppBottomSheetComponent extends StatelessWidget {
  const AppBottomSheetComponent({
    this.title,
    this.titleTextAlign,
    this.primaryCTALabel,
    this.onPrimaryCTAPressed,
    this.secondaryCTALabel,
    this.onSecondaryCTAPressed,
    this.isPrimaryCTAEnabled = true,
    this.isSecondaryCTAEnabled = true,
    this.autoHeight = true,
    this.height,

    /// Information
    this.illustrationWidget,

    /// Input
    this.controller,
    this.focusNode,
    this.autoFocus,
    this.initialValue,
    this.enabled = true,
    this.autovalidateMode,
    this.onChanged,
    this.validator,
    this.textAlign,
    this.labelText,
    this.placeholderText,
    this.helperText,
    this.leadingIcon,
    this.trailingIcon,
    this.keyboardType,
    this.inputFormatters = const [],
    this.onTapOutside,
    this.contentPadding,
    this.showCloseButton = false,

    /// Confirmation
    this.infoCard,
    this.confirmationInfo,

    /// Selection
    this.appSelectionLabel,
    this.selectionItems,

    /// Custom
    this.customWidget,
    this.confirmationInfoType,
    super.key,
  });

  /// Information
  const factory AppBottomSheetComponent.information({
    required String title,
    required AppAssetBuilder illustrationWidget,
    String? confirmationInfo,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    void Function(BuildContext)? onPrimaryCTAPressed,
    void Function(BuildContext)? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled,
    bool isSecondaryCTAEnabled,
    bool autoHeight,
    double? height,
    Widget? inputTextFieldComponent,
    List<InfoCardItem>? infoCard,
    bool showCloseButton,
    Key? primaryButtonKey,
    Key? secondaryButtonKey,
  }) = _InformationBottomSheet;

  /// Input Text field
  const factory AppBottomSheetComponent.inputTextField({
    required String title,
    TextEditingController? controller,
    FocusNode? focusNode,
    bool? autoFocus,
    String? initialValue,
    bool enabled,
    AutovalidateMode? autovalidateMode,
    void Function(String?)? onChanged,
    String? Function(String?)? validator,
    TextAlign? textAlign,
    String? labelText,
    String? placeholderText,
    String? helperText,
    AppAssetBuilder? leadingIcon,
    AppAssetBuilder? trailingIcon,
    TextInputType? keyboardType,
    List<TextInputFormatter> inputFormatters,
    VoidCallback? onTapOutside,
    EdgeInsetsGeometry? contentPadding,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    void Function(BuildContext)? onPrimaryCTAPressed,
    void Function(BuildContext)? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled,
    bool isSecondaryCTAEnabled,
    bool autoHeight,
    double? height,
    bool showCloseButton,
  }) = _InputTextFieldBottomSheet;

  /// Confirmation
  const factory AppBottomSheetComponent.confirmation({
    required String title,
    required List<InfoCardItem> infoCard,
    required String confirmationInfo,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    void Function(BuildContext)? onPrimaryCTAPressed,
    void Function(BuildContext)? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled,
    bool isSecondaryCTAEnabled,
    bool autoHeight,
    double? height,
    BannerTypeEnum? confirmationInfoType,
    bool showCloseButton,
  }) = _ConfirmationBottomSheet;

  /// Selection
  const factory AppBottomSheetComponent.selection({
    required String title,
    required List<Widget> selectionItems,
    TextAlign? titleTextAlign,
    AppSectionLabel? appSelectionLabel,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    void Function(BuildContext)? onPrimaryCTAPressed,
    void Function(BuildContext)? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled,
    bool isSecondaryCTAEnabled,
    bool autoHeight,
    double? height,
    bool showCloseButton,
  }) = _SelectionBottomSheet;

  /// Pending
  const factory AppBottomSheetComponent.pending({
    required String title,
    Widget? loadingWidget,
    bool showCloseButton,
  }) = _PendingBottomSheet;

  /// Custom
  const factory AppBottomSheetComponent.custom({
    required Widget customWidget,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    void Function(BuildContext)? onPrimaryCTAPressed,
    void Function(BuildContext)? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled,
    bool isSecondaryCTAEnabled,
    bool autoHeight,
    double? height,
    bool showCloseButton,
  }) = _CustomBottomSheet;

  final String? title;
  final TextAlign? titleTextAlign;
  final String? primaryCTALabel;
  final String? secondaryCTALabel;
  final void Function(BuildContext)? onPrimaryCTAPressed;
  final void Function(BuildContext)? onSecondaryCTAPressed;
  final bool isPrimaryCTAEnabled;
  final bool isSecondaryCTAEnabled;
  final bool autoHeight;
  final double? height;

  /// Information
  final AppAssetBuilder? illustrationWidget;

  /// Input
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final String? initialValue;
  final bool enabled;
  final AutovalidateMode? autovalidateMode;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final TextAlign? textAlign;
  final String? labelText;
  final String? placeholderText;
  final String? helperText;
  final AppAssetBuilder? leadingIcon;
  final AppAssetBuilder? trailingIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final VoidCallback? onTapOutside;
  final EdgeInsetsGeometry? contentPadding;
  final bool showCloseButton;

  /// Confirmation
  final List<InfoCardItem>? infoCard;
  final String? confirmationInfo;

  /// Selection
  final AppSectionLabel? appSelectionLabel;
  final List<Widget>? selectionItems;

  /// Custom
  final Widget? customWidget;

  final BannerTypeEnum? confirmationInfoType;
}
