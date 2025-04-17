import 'package:app_ui/src/components/components.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

class AppQrCodeCardComponent extends StatelessWidget {
  const AppQrCodeCardComponent({
    required this.pictureUrl,
    required this.name,
    required this.qrCodeData,
    super.key,
    this.forShare = false,
  });
  final String pictureUrl;
  final String name;
  final String qrCodeData;
  final bool forShare;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: forShare ? BorderRadius.zero : AppBorderRadius.s28.all,
          child: Assets.illustrations.qrCardBackground.image(
            fit: BoxFit.cover,
          ),
        ),
        AppCardComponent(
          borderRadius: forShare ? BorderRadius.zero : AppBorderRadius.s28.all,
          contentPadding: AppPaddings.zero.all,
          backgroundColor: Colors.transparent,
          borderColor: forShare ? Colors.transparent : context.colorScheme.outline,
          content: Padding(
            padding: AppPaddings.s24.all,
            child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppIdentityTagComponent.picture(
                          imageUrl: pictureUrl,
                          size: AppSizes.h.custom(72),
                        ),
                        AppGaps.hor.s16,
                        AppTextComponent.titleMediumProminent(
                          name,
                        ),
                      ],
                    ),
                    AppGaps.ver.s16,
                    Flexible(
                      child: AppQrCodeComponent(
                        data: qrCodeData,
                      ),
                    ),
                    AppGaps.ver.s16,
                    Align(
                      alignment: Alignment.topRight,
                      child: Assets.brands.djamoTextLogo.image(
                        height: AppSizes.h.s24,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
