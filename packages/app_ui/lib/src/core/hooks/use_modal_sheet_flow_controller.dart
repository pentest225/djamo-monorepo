import 'package:app_ui/src/src.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

enum _ModalType {
  loading,
  error,
  success,
}

@internal
enum ActionResultEnum {
  none,
  primaryCTA,
  secondaryCTA,
  ;

  bool get isPrimaryCTA => this == ActionResultEnum.primaryCTA;
  bool get isSecondaryCTA => this == ActionResultEnum.secondaryCTA;
}

const _useResult = 'Use the result of this method to navigate or perform an action or .ignore().';

@internal
class ModalSheetFlowController {
  ModalSheetFlowController({String? name}) : _name = name.orNull ?? DateTime.now().millisecondsSinceEpoch.toString();

  final String _name;
  _ModalType? _currentModalType;

  bool get isShowingModal => _currentModalType != null;

  @UseResult(_useResult)
  Future<ActionResultEnum> loading(
    BuildContext context, {
    String routeName = '',
    String? title,
    bool isDismissible = false,
    bool useRootNavigator = true,
    Widget? loadingWidget,
  }) async {
    Future<void> run() {
      _currentModalType = _ModalType.loading;
      return useShowPendingBottomSheet(
        context: context,
        title: title ?? '',
        isDismissible: isDismissible,
        useRootNavigator: useRootNavigator,
        enableDrag: false,
        loadingWidget: loadingWidget,
        name: _name,
      );
    }

    if (isShowingModal) {
      await _hide(context);
    }
    return run().then((_) => ActionResultEnum.none);
  }

  @UseResult(_useResult)
  Future<ActionResultEnum> error(
    BuildContext context, {
    required String message,
    String? confirmationInfo,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    String name = '',
    Duration? continuationDuration,
  }) async {
    Future<ActionResultEnum> run() {
      _currentModalType = _ModalType.error;
      return useShowErrorBottomSheet<ActionResultEnum>(
        context: context,
        name: "$_name${name.orNull == null ? "" : ":$name"}",
        message: message,
        confirmationInfo: confirmationInfo,
        primaryCTALabel: primaryCTALabel?.orNull ?? context.l10n.tryAgain,
        onPrimaryCTAPressed: (context, __) {
          _hide(context, result: ActionResultEnum.primaryCTA);
        },
        secondaryCTALabel: secondaryCTALabel,
        onSecondaryCTAPressed: secondaryCTALabel == null
            ? null
            : (context, __) {
                _hide(context, result: ActionResultEnum.secondaryCTA);
              },
      ).then((r) => r ?? ActionResultEnum.none);
    }

    if (isShowingModal) {
      await _hide(context, continuationDuration: continuationDuration);
    }
    return run();
  }

  @UseResult(_useResult)
  Future<ActionResultEnum> success(
    BuildContext context, {
    required String title,
    String? confirmationInfo,
    List<InfoCardItem>? infoCard,
    String? primaryCTALabel,
    String? secondaryCTALabel,
    bool useRootNavigator = true,
    bool alignCTAsHorizontally = false,
    bool isDismissible = false,
    bool isScrollControlled = true,
    bool hidePrevious = false,
    String? name,
    Duration? continuationDuration,
    AssetGenImage? image,
    Widget Function(BuildContext, Future<bool> Function(BuildContext) onHide)? customModalBuilder,
  }) async {
    Future<ActionResultEnum> run() {
      _currentModalType = _ModalType.success;
      if (customModalBuilder != null) {
        return useAppShowModalBottomSheet<ActionResultEnum>(
          context,
          enableDrag: false,
          useRootNavigator: useRootNavigator,
          isDismissible: isDismissible,
          isScrollControlled: isScrollControlled,
          builder: (context) {
            return customModalBuilder(context, _hide);
          },
          routeSettings: RouteSettings(name: 'CUSTOM_SUCCESS_MODAL:$_name'),
        ).then((r) => r ?? ActionResultEnum.none);
      }
      return useShowInformationBottomSheet<ActionResultEnum>(
        context: context,
        title: title,
        confirmationInfo: confirmationInfo,
        enableDrag: false,
        infoCard: infoCard ?? [],
        name: "$_name${name.orNull == null ? "" : ":$name"}",
        illustrationWidget: AppAssetBuilder.image(
          image: image ?? Assets.illustrations.check,
        ),
        primaryCTALabel: primaryCTALabel ?? context.l10n.backToDashboard,
        secondaryCTALabel: secondaryCTALabel ?? context.l10n.close,
        onPrimaryCTAPressed: (context, __) {
          _hide(context, result: ActionResultEnum.primaryCTA);
        },
        onSecondaryCTAPressed: secondaryCTALabel == null || secondaryCTALabel.isEmpty
            ? null
            : (context, __) {
                _hide(context, result: ActionResultEnum.secondaryCTA);
              },
        useRootNavigator: useRootNavigator,
        isDismissible: isDismissible,
        isScrollControlled: isScrollControlled,
      ).then((r) => r ?? ActionResultEnum.none);
    }

    if (isShowingModal) {
      await _hide(
        context,
        continuationDuration: continuationDuration,
      );
    }
    return run();
  }

  @UseResult(_useResult)
  Future<ActionResultEnum> terminate(BuildContext context, {Duration? beforeHideDuration}) async {
    if (_currentModalType == null) return ActionResultEnum.none;
    _currentModalType = null;
    return _hide(
      context,
      beforeHideDuration: beforeHideDuration,
    ).then((_) => ActionResultEnum.none);
  }

  Future<bool> _hide(
    BuildContext context, {
    ActionResultEnum? result,
    Duration? beforeHideDuration,
    Duration? continuationDuration,
  }) async {
    await Future<void>.delayed(beforeHideDuration ?? const Duration(milliseconds: 120));
    if (!context.mounted) return false;
    final duration = continuationDuration ??= const Duration(milliseconds: 120);
    return useAppPopModalBottomSheet<ActionResultEnum>(
      context,
      result: result,
      shouldForcePop: true,
    ).then((r) {
      return Future.delayed(duration, () => r);
    });
  }
}

void useModalSheetFlowController(void Function(ModalSheetFlowController) execute) {
  final controller = ModalSheetFlowController();
  execute(controller);
}
