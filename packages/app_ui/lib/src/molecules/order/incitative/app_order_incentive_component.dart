import 'package:app_ui/src/components/specific_informations/specific_informations.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:flutter/material.dart';

part '_increase_vc_ceiling.dart';
part '_order_physical_card.dart';

abstract class AppOrderIncentiveComponent extends StatelessWidget {
  const AppOrderIncentiveComponent({
    required this.onPressed,
    super.key,
  });

  const factory AppOrderIncentiveComponent.increaseVCCeiling({
    required VoidCallback onPressed,
  }) = _IncreaseVCCeiling;

  const factory AppOrderIncentiveComponent.orderPhysicalCard({
    required VoidCallback onPressed,
  }) = _OrderPhysicalCard;

  final VoidCallback onPressed;
}
