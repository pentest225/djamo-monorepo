import 'dart:ui';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

class AppDjamoCardComponent extends StatefulWidget {
  const AppDjamoCardComponent({
    required this.lastFourDigits,
    required this.cvv,
    required this.fullName,
    required this.bankPartnerLogo,
    required this.isVirtual,
    required this.isLocked,
    required this.isDestroyed,
    this.expiryDate,
    super.key,
  });

  final String lastFourDigits;
  final String cvv;
  final String fullName;
  final AppAssetBuilder bankPartnerLogo;
  final bool isVirtual;
  final bool isLocked;
  final bool isDestroyed;

  final DateTime? expiryDate;

  @override
  State<StatefulWidget> createState() => AppDjamoCardComponentState();
}

class AppDjamoCardComponentState extends State<AppDjamoCardComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h.custom(210),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.w.s16),
        child: Stack(
          children: [
            Positioned.fill(
              child: _Foreground(
                bankPartnerLogo: widget.bankPartnerLogo,
                cvv: widget.cvv,
                lastFourDigits: widget.lastFourDigits,
                fullName: widget.fullName,
                isVirtual: widget.isVirtual,
                isDestroyed: widget.isDestroyed,
              ),
            ),
            if (widget.isLocked && !widget.isDestroyed) const Positioned.fill(child: LockedCard()),
          ],
        ),
      ),
    );
  }
}

class LockedCard extends StatelessWidget {
  const LockedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0x332A3FFF),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.lock.svg(
                height: AppSizes.h.s48,
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              AppTextComponent.labelMedium(context.l10n.cardLocked, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class _Foreground extends StatelessWidget {
  const _Foreground({
    required this.bankPartnerLogo,
    required this.cvv,
    required this.lastFourDigits,
    required this.fullName,
    required this.isVirtual,
    required this.isDestroyed,
  });

  final String cvv;
  final String lastFourDigits;
  final String fullName;
  final AppAssetBuilder bankPartnerLogo;
  final bool isVirtual;
  final bool isDestroyed;

  Color get backgroundColor {
    if (isVirtual) {
      // Virtual card
      return const Color(0xFFF9F3EC);
    } else {
      // Physical card
      return const Color(0xFF1B1B20);
    }
  }

  Color get baseColor {
    return isVirtual ? Colors.black : Colors.white;
  }

  Color get highlightColor {
    return isVirtual ? Colors.white : Colors.black;
  }

  Color? get overflowColor {
    if (isDestroyed) {
      return const Color(0xBFEFEFFF);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: backgroundColor,
            padding: AppPaddings.s24.horizontal.copyWith(
              top: AppSizes.h.s16,
              bottom: AppSizes.h.s8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSizes.h.s40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Shimmer.fromColors(
                        baseColor: baseColor,
                        highlightColor: highlightColor,
                        loop: 1,
                        child: bankPartnerLogo.mayOverrideConfig(
                          config: AssetBuilderConfig.image(
                            height: AppSizes.h.s40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppSizes.w.custom(86),
                        child: _DjamoLogo(isVirtual: isVirtual),
                      ),
                    ],
                  ),
                ),
                AppGaps.ver.s32,
                SizedBox(
                  height: AppSizes.h.s32,
                  child: isVirtual ? null : const _Puce(),
                ),
                AppGaps.ver.s28,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Shimmer.fromColors(
                        baseColor: baseColor,
                        highlightColor: highlightColor,
                        loop: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '**** **** **** ${lastFourDigits.orNull ?? '****'}',
                              style: _foregroundStyle(fontSize: AppSizes.f.s14),
                            ),
                            AppGaps.ver.s8,
                            Row(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Exp Date',
                                      textAlign: TextAlign.start,
                                      style: _foregroundStyle(fontSize: AppSizes.f.s8),
                                    ),
                                    Text(
                                      '**/**',
                                      textAlign: TextAlign.start,
                                      style: _foregroundStyle(fontSize: AppSizes.f.s10),
                                    ),
                                  ],
                                ),
                                AppGaps.hor.s20,
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CVV',
                                      textAlign: TextAlign.start,
                                      style: _foregroundStyle(fontSize: AppSizes.f.s8),
                                    ),
                                    Text(
                                      cvv,
                                      textAlign: TextAlign.start,
                                      style: _foregroundStyle(fontSize: AppSizes.f.s10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppGaps.ver.s12,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    fullName,
                                    style: _foregroundStyle(fontSize: AppSizes.f.s10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    _VisaLogo(isVirtual: isVirtual),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            color: overflowColor,
          ),
        ),
      ],
    );
  }

  TextStyle _foregroundStyle({double? fontSize}) {
    return TextStyle(
      color: isVirtual ? Colors.black : Colors.white,
      fontFamily: Assets.fonts.gTWalsheimProRegular,
      fontWeight: FontWeight.w400,
      fontSize: fontSize ?? AppSizes.f.s12,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _Puce extends StatelessWidget {
  const _Puce();

  @override
  Widget build(BuildContext context) {
    return Assets.images.cardPuce.image(
      height: AppSizes.h.s32,
    );
  }
}

class _VisaLogo extends StatelessWidget {
  const _VisaLogo({
    required this.isVirtual,
  });

  final bool isVirtual;

  @override
  Widget build(BuildContext context) {
    final logo = isVirtual ? Assets.bankLogos.visaBlack : Assets.bankLogos.visaWhite;
    return logo.image(
      alignment: Alignment.bottomCenter,
      height: AppSizes.h.s24,
    );
  }
}

class _DjamoLogo extends StatelessWidget {
  const _DjamoLogo({
    required this.isVirtual,
  });

  final bool isVirtual;

  @override
  Widget build(BuildContext context) {
    final logo = isVirtual ? Assets.brands.djamoTextLogo : Assets.brands.djamoShineLogo;
    return logo.image(
      height: AppSizes.h.s24,
    );
  }
}
