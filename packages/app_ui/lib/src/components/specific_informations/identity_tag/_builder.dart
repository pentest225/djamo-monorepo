part of 'app_identity_tag_component.dart';

class _Builder extends StatelessWidget {
  const _Builder({
    this.label,
    this.monogram,
    this.imageUrl,
    this.country,
    this.brand,
    this.onPressed,
    this.httpHeaders,
    this.size,
    this.icon,
    this.fit,
    this.monogramColor,
    this.backgroundColor,
  });

  final String? label;
  final String? monogram;
  final String? imageUrl;
  final AppAssetBuilder? country;
  final AppAssetBuilder? brand;
  final VoidCallback? onPressed;
  final Map<String, String>? httpHeaders;
  final double? size;
  final AppAssetBuilder? icon;
  final BoxFit? fit;
  final Color? monogramColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final badgeConfig = AssetBuilderConfig.image(
      width: AppSizes.h.s14,
      height: AppSizes.h.s14,
      shouldClipOval: true,
      fit: BoxFit.cover,
    ).$svg(
      height: AppSizes.h.s14,
      width: AppSizes.h.s14,
    );
    final $size = size ?? AppSizes.h.s40;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: size ?? AppSizes.h.s40,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (imageUrl != null && imageUrl!.isValidUrl) ...[
                  ClipOval(
                    child: AppAssetBuilder.network(
                      url: imageUrl!,
                      httpHeaders: httpHeaders,
                      config: AssetBuilderConfig.image(
                        width: $size,
                        height: $size,
                        shouldClipOval: true,
                        fit: fit ?? BoxFit.cover,
                      ).$svg(
                        height: $size,
                        width: $size,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ] else if (icon != null) ...[
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      shape: const CircleBorder(),
                      color: context.colorScheme.primaryContainer,
                    ),
                    child: SizedBox.square(
                      dimension: $size,
                      child: Align(
                        child: icon!.mayOverrideConfig(
                          config: AssetBuilderConfig.svg(
                            width: AppSizes.h.s24,
                            height: AppSizes.h.s24,
                            color: context.customColorScheme.content,
                          )
                              .$image(
                                width: AppSizes.h.s24,
                                height: AppSizes.h.s24,
                              )
                              .$icon(
                                size: AppSizes.f.s24,
                                color: context.customColorScheme.content,
                              ),
                        ),
                      ),
                    ),
                  ),
                ] else if (monogram != null && monogram!.isNotEmpty) ...[
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      shape: const CircleBorder(),
                      color: backgroundColor ?? context.colorScheme.primaryContainer,
                    ),
                    child: Align(
                      child: AppTextComponent.titleMedium(
                        monogram!,
                        textAlign: TextAlign.center,
                        color: monogramColor ?? context.colorScheme.primary,
                      ),
                    ),
                  ),
                ] else ...[
                  ClipOval(
                    child: Assets.images.userImage.image(
                      height: $size,
                      width: $size,
                    ),
                  ),
                ],
                Positioned(
                  height: AppSizes.h.s14,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      if (country != null) ...[
                        ClipOval(
                          child: country!.mayOverrideConfig(
                            config: badgeConfig,
                          ),
                        ),
                      ],
                      const Spacer(),
                      if (brand != null) ...[
                        ClipOval(
                          child: brand!.mayOverrideConfig(
                            config: badgeConfig,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (label != null && label!.isNotEmpty) ...[
            AppGaps.ver.s4,
            AppTextComponent.labelLarge(
              label!,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}
