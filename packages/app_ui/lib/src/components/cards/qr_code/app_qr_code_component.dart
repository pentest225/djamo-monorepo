import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class AppQrCodeComponent extends StatelessWidget {
  const AppQrCodeComponent({
    required this.data,
    super.key,
  });
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.s8.all,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: -AppSizes.w.s8,
              right: -AppSizes.w.s8,
              top: -AppSizes.h.s8,
              bottom: -AppSizes.h.s8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: AppBorderRadius.s8.all,
                  border: Border.all(
                    color: context.colorScheme.surfaceContainerLowest.withOpacity(.25),
                  ),
                ),
              ),
            ),
            PrettyQrView.data(
              data: data,
              errorCorrectLevel: QrErrorCorrectLevel.H,
              decoration: PrettyQrDecoration(
                image: PrettyQrDecorationImage(
                  image: Assets.brands.djamoDark.provider(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
