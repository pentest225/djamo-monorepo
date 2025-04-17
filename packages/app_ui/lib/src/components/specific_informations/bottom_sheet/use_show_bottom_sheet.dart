import 'package:app_ui/src/components/cards/info/app_info_card_component.dart';
import 'package:app_ui/src/components/sections/label/app_section_label.dart';
import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/config/routes/use_app_pop_modal_bottom_sheet.dart';
import 'package:app_ui/src/config/routes/use_app_show_modal_bottom_sheet.dart';
import 'package:app_ui/src/core/classes/app_asset_builder.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/core/types/modal_bottom_sheet_context_callback.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petit_extension/petit_extension.dart';

/// Hook to show information bottom sheet.
Future<T?> useShowInformationBottomSheet<T extends Object?>({
  required BuildContext context,
  required String title,
  required AppAssetBuilder illustrationWidget,
  List<InfoCardItem> infoCard = const [],
  String? confirmationInfo,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool useSafeArea = true,
  bool enableDrag = true,
  String name = '',
  bool showCloseButton = false,
  Key? primaryButtonKey,
  Key? secondaryButtonKey,
}) {
  return useAppShowModalBottomSheet(
    context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    showDragHandle: false,
    routeSettings: RouteSettings(name: "INFORMATION${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r.s28),
    ),
    enableDrag: enableDrag,
    builder: (context) {
      return PopScope(
        canPop: isDismissible,
        child: AppBottomSheetComponent.information(
          title: title,
          showCloseButton: showCloseButton,
          confirmationInfo: confirmationInfo,
          illustrationWidget: illustrationWidget,
          infoCard: infoCard,
          primaryCTALabel: primaryCTALabel,
          secondaryCTALabel: secondaryCTALabel,
          isPrimaryCTAEnabled: isPrimaryCTAEnabled,
          isSecondaryCTAEnabled: isSecondaryCTAEnabled,
          onPrimaryCTAPressed: (context) {
            onPrimaryCTAPressed?.call(
              context,
              ([r]) {
                return useAppPopModalBottomSheet<T>(context, result: r);
              },
            );
          },
          onSecondaryCTAPressed: onSecondaryCTAPressed == null
              ? null
              : (context) {
                  onSecondaryCTAPressed.call(
                    context,
                    ([r]) {
                      return useAppPopModalBottomSheet<T>(context, result: r);
                    },
                  );
                },
          autoHeight: autoHeight,
          height: height,
          primaryButtonKey: primaryButtonKey,
          secondaryButtonKey: secondaryButtonKey,
        ),
      );
    },
  );
}

Future<T?> useShowSuccessBottomSheet<T extends Object?>({
  required BuildContext context,
  required String title,
  List<InfoCardItem> infoCard = const [],
  String? confirmationInfo,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool enableDrag = true,
  String name = '',
  bool showCloseButton = false,
}) {
  return useShowInformationBottomSheet(
    context: context,
    name: "SUCCESS${name.orNull == null ? '' : ":$name"}",
    isDismissible: isDismissible,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    illustrationWidget: AppAssetBuilder.image(image: Assets.illustrations.check),
    title: title,
    confirmationInfo: confirmationInfo,
    primaryCTALabel: primaryCTALabel,
    onPrimaryCTAPressed: onPrimaryCTAPressed,
    infoCard: infoCard,
    isPrimaryCTAEnabled: isPrimaryCTAEnabled,
    isSecondaryCTAEnabled: isSecondaryCTAEnabled,
    secondaryCTALabel: secondaryCTALabel,
    onSecondaryCTAPressed: onSecondaryCTAPressed,
    autoHeight: autoHeight,
    height: height,
    showCloseButton: showCloseButton,
  );
}

/// Hook to show confirmation bottom sheet.
Future<T?> useShowConfirmationBottomSheet<T extends Object?>({
  required BuildContext context,
  required String title,
  required List<InfoCardItem> infoCard,
  required String confirmationInfo,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool useSafeArea = true,
  bool enableDrag = true,
  String name = '',
  BannerTypeEnum? confirmationInfoType,
  bool showCloseButton = false,
}) {
  return useAppShowModalBottomSheet(
    context,
    isScrollControlled: isScrollControlled,
    showDragHandle: false,
    isDismissible: isDismissible,
    useSafeArea: useSafeArea,
    routeSettings: RouteSettings(name: "CONFIRMATION${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          AppSizes.r.s28,
        ),
        topRight: Radius.circular(
          AppSizes.r.s28,
        ),
      ),
    ),
    enableDrag: enableDrag,
    builder: (context) {
      return AppBottomSheetComponent.confirmation(
        title: title,
        showCloseButton: showCloseButton,
        infoCard: infoCard,
        confirmationInfoType: confirmationInfoType,
        confirmationInfo: confirmationInfo,
        primaryCTALabel: primaryCTALabel,
        secondaryCTALabel: secondaryCTALabel,
        isPrimaryCTAEnabled: isPrimaryCTAEnabled,
        isSecondaryCTAEnabled: isSecondaryCTAEnabled,
        onPrimaryCTAPressed: (_) {
          onPrimaryCTAPressed?.call(
            context,
            ([r]) {
              return useAppPopModalBottomSheet<T>(context, result: r);
            },
          );
        },
        onSecondaryCTAPressed: onSecondaryCTAPressed == null
            ? null
            : (_) {
                onSecondaryCTAPressed.call(
                  context,
                  ([r]) {
                    return useAppPopModalBottomSheet<T>(context, result: r);
                  },
                );
              },
        autoHeight: autoHeight,
        height: height,
      );
    },
  );
}

// Hook to show selection bottom sheet.
Future<T?> useShowSelectionBottomSheet<T extends Object?>({
  required BuildContext context,
  required String title,
  required ModalBottomSheetContextCallback<List<Widget>, T> selectionItems,
  TextAlign? titleTextAlign,
  AppSectionLabel? appSelectionLabel,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool enableDrag = true,
  String name = '',
  bool showCloseButton = false,
}) {
  return useAppShowModalBottomSheet(
    context,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    showDragHandle: false,
    routeSettings: RouteSettings(name: "SELECTION${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r.s28),
    ),
    enableDrag: enableDrag,
    builder: (context) {
      return AppBottomSheetComponent.selection(
        title: title,
        showCloseButton: showCloseButton,
        titleTextAlign: titleTextAlign,
        appSelectionLabel: appSelectionLabel,
        selectionItems: selectionItems.call(
          context,
          ([r]) {
            return useAppPopModalBottomSheet<T>(context, result: r);
          },
        ),
        primaryCTALabel: primaryCTALabel,
        secondaryCTALabel: secondaryCTALabel,
        isPrimaryCTAEnabled: isPrimaryCTAEnabled,
        isSecondaryCTAEnabled: isSecondaryCTAEnabled,
        onPrimaryCTAPressed: onPrimaryCTAPressed == null
            ? null
            : (context) {
                onPrimaryCTAPressed.call(
                  context,
                  ([r]) {
                    return useAppPopModalBottomSheet<T>(context, result: r);
                  },
                );
              },
        onSecondaryCTAPressed: onSecondaryCTAPressed == null
            ? null
            : (context) {
                onSecondaryCTAPressed.call(
                  context,
                  ([r]) {
                    return useAppPopModalBottomSheet<T>(context, result: r);
                  },
                );
              },
        autoHeight: autoHeight,
        height: height,
      );
    },
  );
}

// Hook to show pending bottom sheet.
Future<void> useShowPendingBottomSheet({
  required BuildContext context,
  required String title,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = false,
  bool isDismissible = true,
  bool enableDrag = true,
  Widget? loadingWidget,
  String name = '',
  bool showCloseButton = false,
}) {
  return useAppShowModalBottomSheet(
    context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: false,
    routeSettings: RouteSettings(name: "PENDING${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r.s28),
    ),
    builder: (context) {
      return AppBottomSheetComponent.pending(
        title: title,
        loadingWidget: loadingWidget,
        showCloseButton: showCloseButton,
      );
    },
  );
}

// Hook to show input bottom sheet.
Future<T?> useShowInputBottomSheet<T extends Object?>({
  required BuildContext context,
  required String title,
  TextEditingController? controller,
  WidgetStatesController? statesController,
  FocusNode? focusNode,
  bool? autoFocus,
  String? initialValue,
  bool enabled = true,
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
  List<TextInputFormatter> inputFormatters = const [],
  VoidCallback? onTapOutside,
  EdgeInsetsGeometry? contentPadding,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = false,
  bool isDismissible = true,
  bool enableDrag = true,
  String name = '',
  bool showCloseButton = false,
}) {
  return useAppShowModalBottomSheet(
    context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    routeSettings: RouteSettings(name: "INPUT${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r.s28),
    ),
    enableDrag: enabled,
    showDragHandle: false,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: AppBottomSheetComponent.inputTextField(
          title: title,
          showCloseButton: showCloseButton,
          labelText: labelText,
          controller: controller,
          focusNode: focusNode,
          autoFocus: autoFocus,
          initialValue: initialValue,
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          onChanged: onChanged,
          validator: validator,
          textAlign: textAlign,
          placeholderText: placeholderText,
          helperText: helperText,
          leadingIcon: leadingIcon,
          trailingIcon: trailingIcon,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          onTapOutside: onTapOutside,
          contentPadding: contentPadding,
          primaryCTALabel: primaryCTALabel,
          secondaryCTALabel: secondaryCTALabel,
          isPrimaryCTAEnabled: isPrimaryCTAEnabled,
          isSecondaryCTAEnabled: isSecondaryCTAEnabled,
          onPrimaryCTAPressed: (context) {
            onPrimaryCTAPressed?.call(
              context,
              ([r]) {
                return useAppPopModalBottomSheet<T>(context, result: r);
              },
            );
          },
          onSecondaryCTAPressed: (context) {
            onSecondaryCTAPressed?.call(
              context,
              ([r]) {
                return useAppPopModalBottomSheet<T>(context, result: r);
              },
            );
          },
          autoHeight: autoHeight,
          height: height,
        ),
      );
    },
  );
}

/// Hook to show custom bottom sheet.
Future<T?> useShowCustomBottomSheet<T extends Object?>({
  required BuildContext context,
  required ModalBottomSheetContextCallback<Widget, T> customWidget,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool enableDrag = true,
  String name = '',
  bool showCloseButton = false,
}) {
  return useAppShowModalBottomSheet(
    context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    routeSettings: RouteSettings(name: "CUSTOM${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r.s28),
    ),
    enableDrag: enableDrag,
    showDragHandle: false,
    builder: (context) {
      return AppBottomSheetComponent.custom(
        showCloseButton: showCloseButton,
        customWidget: customWidget.call(
          context,
          ([r]) {
            return useAppPopModalBottomSheet<T>(context, result: r);
          },
        ),
        primaryCTALabel: primaryCTALabel,
        secondaryCTALabel: secondaryCTALabel,
        isPrimaryCTAEnabled: isPrimaryCTAEnabled,
        isSecondaryCTAEnabled: isSecondaryCTAEnabled,
        onPrimaryCTAPressed: (context) {
          onPrimaryCTAPressed?.call(
            context,
            ([r]) {
              return useAppPopModalBottomSheet<T>(context, result: r);
            },
          );
        },
        onSecondaryCTAPressed: (context) {
          onSecondaryCTAPressed?.call(
            context,
            ([r]) {
              return useAppPopModalBottomSheet<T>(context, result: r);
            },
          );
        },
        autoHeight: autoHeight,
        height: height,
      );
    },
  );
}

/// Hook to show dropdown bottom sheet.
Future<T?> useShowDropdownBottomSheet<T extends Object?>({
  required BuildContext context,
  required String title,
  required String label,
  required bool hasFocused,
  required List<T> items,
  required void Function(T?, HideBottomSheetCallback<T> hide) onItemChanged,
  required void Function(HideBottomSheetCallback<T> hide, {required bool isOpen}) onMenuStateChange,
  String Function(T?)? itemValueFormatter,
  T? value,
  GlobalKey? buttonKey,
  String? primaryCTALabel,
  String? secondaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  AppDropdownDecoration? decoration,
  bool isPrimaryCTAEnabled = true,
  bool isSecondaryCTAEnabled = true,
  bool autoHeight = true,
  double? height,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  bool isDismissible = true,
  bool enableDrag = true,
  String name = '',
}) {
  return useAppShowModalBottomSheet(
    context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    routeSettings: RouteSettings(name: "DROPDOWN${name.orNull == null ? '' : ":$name"}"),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.r.s28),
    ),
    enableDrag: enableDrag,
    builder: (context) {
      return AppDropdownBottomSheet(
        title: title,
        label: label,
        hasFocused: hasFocused,
        items: items,
        onItemChanged: (value) {
          onItemChanged(value, ([r]) {
            return useAppPopModalBottomSheet<T>(context, result: r);
          });
        },
        onMenuStateChange: (isOpen) {
          onMenuStateChange(
            ([r]) {
              return useAppPopModalBottomSheet<T>(context, result: r);
            },
            isOpen: isOpen,
          );
        },
        value: value,
        key: buttonKey,
        decoration: decoration,
        itemValueFormatter: itemValueFormatter,
        primaryCTALabel: primaryCTALabel,
        secondaryCTALabel: secondaryCTALabel,
        isPrimaryCTAEnabled: isPrimaryCTAEnabled,
        isSecondaryCTAEnabled: isSecondaryCTAEnabled,
        onPrimaryCTAPressed: (context) {
          onPrimaryCTAPressed?.call(
            context,
            ([r]) {
              return useAppPopModalBottomSheet<T>(context, result: r);
            },
          );
        },
        onSecondaryCTAPressed: (context) {
          onSecondaryCTAPressed?.call(
            context,
            ([r]) {
              return useAppPopModalBottomSheet<T>(context, result: r);
            },
          );
        },
        autoHeight: autoHeight,
        height: height,
      );
    },
  );
}

Future<T?> useShowErrorBottomSheet<T extends Object?>({
  required BuildContext context,
  required String message,
  String? confirmationInfo,
  ModalBottomSheetContextCallback<void, T>? onPrimaryCTAPressed,
  String? primaryCTALabel,
  ModalBottomSheetContextCallback<void, T>? onSecondaryCTAPressed,
  String? secondaryCTALabel,
  bool isDismissible = true,
  bool useRootNavigator = false,
  bool isScrollControlled = true,
  String name = '',
  bool showCloseButton = false,
  Key? primaryButtonKey,
  Key? secondaryButtonKey,
}) {
  if (!context.mounted) return Future.value();
  return useShowInformationBottomSheet(
    context: context,
    name: "ERROR${name.orNull == null ? '' : ":$name"}",
    isDismissible: isDismissible,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    illustrationWidget: AppAssetBuilder.image(image: Assets.illustrations.cross),
    title: message,
    confirmationInfo: confirmationInfo,
    primaryCTALabel: primaryCTALabel.orNull ?? context.l10n.tryAgain,
    onPrimaryCTAPressed: onPrimaryCTAPressed ?? (_, hide) => hide(),
    secondaryCTALabel: secondaryCTALabel,
    onSecondaryCTAPressed: onSecondaryCTAPressed,
    showCloseButton: showCloseButton,
    primaryButtonKey: primaryButtonKey ?? const Key('try_again'),
    secondaryButtonKey: secondaryButtonKey,
  );
}
