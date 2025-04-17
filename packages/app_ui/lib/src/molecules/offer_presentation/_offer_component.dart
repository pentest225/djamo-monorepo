part of 'app_offer_presentation_component.dart';

class _OfferComponent extends StatelessWidget {
  const _OfferComponent({
    required this.offer,
  });

  final UIOfferItem offer;

  @override
  Widget build(BuildContext context) {
    final UIOfferItem(:illustration, :tag, :content, :baseLine) = offer;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppGaps.ver.s16,
        AspectRatio(
          aspectRatio: 1.687,
          child: Stack(
            children: [
              Positioned.fill(
                child: illustration.mayOverrideConfig(
                  config: AssetBuilderConfig.image(
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
              ),
              if (tag != null) ...[
                Positioned(
                  top: 0,
                  left: AppSizes.w.custom(24),
                  child: tag,
                ),
              ],
              if (baseLine != null) ...[
                Positioned(
                  bottom: 0,
                  left: AppSizes.w.custom(24),
                  right: AppSizes.w.custom(24),
                  child: baseLine,
                ),
              ],
            ],
          ),
        ),
        AppGaps.ver.s16,
        Padding(
          padding: AppPaddings.s24.left.copyWith(
            top: AppSizes.h.s8,
            bottom: AppSizes.h.s8,
            right: AppSizes.h.s8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: content.map(
              (c) {
                return Padding(
                  padding: AppPaddings.s8.vertical,
                  child: Row(
                    children: [
                      c.icon.mayOverrideConfig(
                        config: AssetBuilderConfig.image(
                          fit: BoxFit.contain,
                          height: AppSizes.h.s24,
                          width: AppSizes.h.s24,
                        ).$svg(
                          fit: BoxFit.contain,
                          height: AppSizes.h.s24,
                          width: AppSizes.h.s24,
                        ),
                      ),
                      AppGaps.hor.s16,
                      Expanded(
                        child: AppTextComponent.bodyLarge(
                          c.content,
                          useRichText: true,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
