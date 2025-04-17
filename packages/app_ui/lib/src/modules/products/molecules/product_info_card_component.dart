import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class ProductInfoCardComponent extends StatelessWidget {
  const ProductInfoCardComponent({
    required this.name,
    required this.price,
    required this.icon,
    required this.properties,
    this.baseLine,
    this.isPremium = false,
    this.isPopular = false,
    super.key,
  });

  final String name;
  final String? baseLine;
  final double price;
  final AppAssetBuilder icon;
  final bool isPremium;
  final bool isPopular;
  final List<Widget> properties;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colorScheme.outlineVariant,
        ),
        borderRadius: AppBorderRadius.s16.all,
      ),
      child: Padding(
        padding: AppPaddings.s16.all.copyWith(
          bottom: AppSizes.h.s24,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: isPremium
                          ? Assets.illustrations.planIllustrationPremium.image(
                              fit: BoxFit.contain,
                            )
                          : Assets.illustrations.planIllustration.image(
                              fit: BoxFit.contain,
                            ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (isPopular)
                            AppChipsComponent.inputChip(
                              labelText: context.l10n.popular,
                              selected: true,
                              showCheckmark: false,
                              selectedForegroundColor: context.customColorScheme.content,
                              selectedColor: context.customColorScheme.tertiaryCardOutline,
                            ),
                          AppTextComponent.labelLarge(price.toCurrency(context)),
                          AppGaps.ver.s24,
                        ],
                      ),
                    ),
                    if (baseLine != null)
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(),
                      ),
                  ],
                ),
              ),
              const AppDividerComponent.horizontal(),
              ...properties,
            ],
          ),
        ),
      ),
    );
  }
}
