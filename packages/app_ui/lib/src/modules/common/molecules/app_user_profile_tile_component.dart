import 'package:app_ui/src/components/specific_informations/chips/app_chips_component.dart';
import 'package:app_ui/src/components/specific_informations/identity_tag/identity_tag.dart';
import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

class AppUserProfileTileComponent extends StatelessWidget {
  const AppUserProfileTileComponent({
    required this.fullName,
    required this.e164PhoneNumber,
    required this.productSubscriptionIdentifier,
    required this.profilePhotoUrl,
    this.foregroundColor,
    this.subtitleForegroundColor,
    this.showPlanTag = false,
    this.isPremium = false,
    this.onPlanChipPressed,
    this.onChangeProfilePhotoPressed,
    super.key,
  });

  final String fullName;
  final String profilePhotoUrl;
  final String e164PhoneNumber;
  final String productSubscriptionIdentifier;
  final Color? foregroundColor;
  final Color? subtitleForegroundColor;
  final bool showPlanTag;
  final bool isPremium;
  final void Function()? onPlanChipPressed;
  final void Function()? onChangeProfilePhotoPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: AppSizes.w.s16,
      leading: AppIdentityTagComponent.picture(
        imageUrl: profilePhotoUrl,
        rightBadge: onChangeProfilePhotoPressed == null ? null : AppAssetBuilder.svg(svg: Assets.icons.takePicture),
        onPressed: onChangeProfilePhotoPressed,
      ),
      title: AppTextComponent.titleMedium(
        fullName,
        color: foregroundColor,
      ),
      subtitle: AppTextComponent.labelLarge(
        e164PhoneNumber,
        color: subtitleForegroundColor ?? foregroundColor,
      ),
      trailing: showPlanTag
          ? AppChipsComponent.inputChip(
              labelText: productSubscriptionIdentifier.toUpperCase(),
              onSelected: (_) {
                onPlanChipPressed?.call();
              },
              selected: true,
              showCheckmark: false,
              avatarIcon: isPremium
                  ? AppAssetBuilder.svg(
                      svg: Assets.icons.crown,
                      config: AssetBuilderConfig.svg(
                        color: context.colorScheme.primary,
                      ),
                    )
                  : null,
            )
          : AppAssetBuilder.svg(
              svg: Assets.icons.arrowDropDown,
              config: AssetBuilderConfig.svg(
                color: context.colorScheme.onPrimary,
              ),
            ),
    );
  }
}
