import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

void useShowQuitPageConfirmationModalSheet(
  BuildContext context, {
  required VoidCallback onQuit,
  required VoidCallback onCancel,
  bool useRootNavigator = true,
  String? customMessage,
}) {
  useShowInformationBottomSheet(
    context: context,
    title: customMessage ?? context.l10n.quitThisScreenConfirmation,
    primaryCTALabel: context.l10n.confirm,
    secondaryCTALabel: context.l10n.cancel,
    illustrationWidget: AppAssetBuilder.image(
      image: Assets.illustrations.warning,
      config: AssetBuilderConfig.image(
        width: AppSizes.h.custom(120),
        height: AppSizes.h.custom(120),
      ),
    ),
    useRootNavigator: useRootNavigator,
    onPrimaryCTAPressed: (_, hide) {
      hide().then((_) {
        onQuit();
      });
    },
    onSecondaryCTAPressed: (_, hide) {
      hide().then((_) {
        onCancel();
      });
    },
  );
}
