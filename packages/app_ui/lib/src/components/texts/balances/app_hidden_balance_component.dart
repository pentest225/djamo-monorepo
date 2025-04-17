import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';

class AppHiddenBalanceComponent extends StatelessWidget {
  const AppHiddenBalanceComponent({
    required this.isMini,
    super.key,
    this.color,
  });
  final bool isMini;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isMini ? AppSizes.h.custom(30) : AppSizes.h.custom(36),
      child: Row(
        children: [
          for (int i = 0; i < 3; i++) ...[
            Assets.icons.asterisk.svg(
              height: AppSizes.f.s24,
              width: AppSizes.f.s24,
              colorFilter: color?.toSrcMode(),
            ),
            if (i < 2) ...[
              AppGaps.hor.s8,
            ],
          ],
        ],
      ),
    );
  }
}
