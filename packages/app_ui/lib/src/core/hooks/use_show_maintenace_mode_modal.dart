import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

Future<void> useShowMaintenanceModeModal(BuildContext context) {
  return useAppShowModalBottomSheet(
    context,
    routeSettings: const RouteSettings(name: 'MAINTENANCE_MODE'),
    builder: (context) {
      return SafeArea(
        child: Padding(
          padding: AppPaddings.s16.symmetric,
          child: Column(
            children: [
              const Spacer(),
              Assets.animations.maintenace.lottie(
                height: AppSizes.h.custom(200),
              ),
              AppGaps.ver.s16,
              const AppTextComponent.titleSmall(
                'Maintenance Mode',
                textAlign: TextAlign.center,
              ),
              const AppTextComponent.bodyMedium(
                'We are currently in maintenance mode for this feature. Please try again later.',
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
                label: 'Close',
                onPressed: () {
                  useAppPopModalBottomSheet(context).ignore();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
