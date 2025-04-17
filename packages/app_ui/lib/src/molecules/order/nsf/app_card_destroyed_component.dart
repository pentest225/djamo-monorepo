import 'package:app_ui/app_ui.dart';
import 'package:flutter/widgets.dart';

part '_app_card_destroyed.dart';
part '_app_card_expired.dart';
part '_app_card_restored.dart';

abstract class AppCardDestroyedTooltipComponent extends StatelessWidget {
  const AppCardDestroyedTooltipComponent({
    required this.onPressed,
    super.key,
  });

  const factory AppCardDestroyedTooltipComponent.cardDestroyed({
    required VoidCallback onPressed,
    required bool isPhysicalCard,
    required String nsfCount,
    Key? key,
  }) = _AppCardDestroyedTooltip;

  const factory AppCardDestroyedTooltipComponent.cardRecreated({
    required VoidCallback onPressed,
    Key? key,
  }) = _AppCardRestoredTooltip;

  const factory AppCardDestroyedTooltipComponent.cardExpired({
    required VoidCallback onPressed,
    required int expiresInDays,
    Key? key,
  }) = _AppCardExpiredTooltip;

  final VoidCallback onPressed;
}
