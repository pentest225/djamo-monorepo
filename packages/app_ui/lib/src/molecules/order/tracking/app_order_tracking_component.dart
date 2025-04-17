import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_collect_your_card_now.dart';
part '_failed_delivery.dart';
part '_help_from_agent_for_kyc.dart';
part '_pending.dart';
part '_pending_delivery.dart';
part '_prefer_delivery.dart';
part '_ready_for_pickup.dart';
part '_verify_your_identity.dart';

abstract class AppOrderTrackingComponent extends StatelessWidget {
  const AppOrderTrackingComponent({
    this.onPressed,
    this.message,
    super.key,
  });

  const factory AppOrderTrackingComponent.failedDelivery({
    VoidCallback onPressed,
    String message,
  }) = _FailedDelivery;

  const factory AppOrderTrackingComponent.pending({
    VoidCallback onPressed,
    String message,
  }) = _Pending;

  const factory AppOrderTrackingComponent.pendingDelivery({
    VoidCallback onPressed,
    String message,
    DateTime? deliveryDate,
  }) = _PendingDelivery;

  const factory AppOrderTrackingComponent.preferDelivery({
    VoidCallback onPressed,
    String message,
  }) = _PreferDelivery;

  const factory AppOrderTrackingComponent.readyForPickup({
    VoidCallback onPressed,
    String message,
  }) = _ReadyForPickup;

  const factory AppOrderTrackingComponent.collectYourCardNow({
    VoidCallback onPressed,
    String message,
  }) = _CollectYourCardNow;

  const factory AppOrderTrackingComponent.verifyYourIdentity({
    VoidCallback onPressed,
    String message,
  }) = _VerifyYourIdentity;

  const factory AppOrderTrackingComponent.helpFromAgentForKYC({
    VoidCallback onPressed,
    String message,
  }) = _HelpFromAgentForKYC;

  final VoidCallback? onPressed;
  final String? message;
}
