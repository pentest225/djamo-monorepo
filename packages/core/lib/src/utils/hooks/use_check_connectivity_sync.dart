import 'package:app_ui/app_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

// TODO(You): Recheck this once the connectivity service is restored
void useCheckConnectivitySync(
  BuildContext context, {
  required VoidCallback onConnected,
}) {
  final isConnected = !store.authentication.session.connectivityStatus.isOffline;
  onConnected();

  return;
  if (!isConnected) {
    useShowInformationBottomSheet(
      context: context,
      title: context.l10n.checkInternetConnection,
      illustrationWidget: AppAssetBuilder.image(image: Assets.illustrations.warning),
      primaryCTALabel: context.l10n.iUnderstand,
      onPrimaryCTAPressed: (_, hide) {
        hide();
      },
    );
    return;
  }
  onConnected();
}
