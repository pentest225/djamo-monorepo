import 'dart:async';

import 'package:app_ui/src/components/lists/core_list/core_list.dart';
import 'package:app_ui/src/components/lists/items/app_list_item_component.dart';
import 'package:app_ui/src/components/navigation/navigation.dart';
import 'package:app_ui/src/components/sections/empty_state_placeholder/app_section_empty_state_placeholder.dart';
import 'package:app_ui/src/components/sections/label/label.dart';
import 'package:app_ui/src/components/specific_informations/identity_tag/app_identity_tag_component.dart';
import 'package:app_ui/src/core/behaviors/scroll/always_scrollable_bouncing_physics.dart';
import 'package:app_ui/src/core/classes/app_asset_builder.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/modules/common/atoms/app_loader_widget.dart';
import 'package:app_ui/src/tokens/assets/assets.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:flutter/material.dart';

class BeneficiarySelectionListView<Beneficiary, RecentBeneficiary> extends StatelessWidget {
  const BeneficiarySelectionListView({
    required this.showRequestBeneficiaryPermission,
    required this.isBeneficiariesLoading,
    required this.onRequestPermissionPressed,
    required this.beneficiaries,
    required this.beneficiaryBuilder,
    required this.recentBeneficiaries,
    required this.recentBeneficiaryBuilder,
    required this.beneficiariesSectionLabel,
    required this.recentBeneficiariesSectionLabel,
    required this.addNewBeneficiarySectionLabel,
    required this.onAddNewBeneficiary,
    required this.selfSectionTitle,
    required this.selfSectionSubtitle,
    required this.selfProfilePhotoUrl,
    required this.onSelfSelected,
    required this.onShowAllPressed,
    required this.onBeneficiarySelected,
    required this.searchResultsBuilder,
    required this.searchPlaceholder,
    super.key,
  });

  final bool showRequestBeneficiaryPermission;
  final bool isBeneficiariesLoading;
  final VoidCallback onRequestPermissionPressed;
  final List<Beneficiary> beneficiaries;
  final Widget Function(BuildContext, int, Beneficiary) beneficiaryBuilder;
  final List<RecentBeneficiary> recentBeneficiaries;
  final String beneficiariesSectionLabel;
  final String recentBeneficiariesSectionLabel;
  final String searchPlaceholder;
  final FutureOr<Iterable<Widget>> Function(BuildContext, SearchController)? searchResultsBuilder;
  final void Function(Beneficiary) onBeneficiarySelected;
  final Widget Function(BuildContext, int, RecentBeneficiary)? recentBeneficiaryBuilder;
  final String addNewBeneficiarySectionLabel;
  final VoidCallback onAddNewBeneficiary;
  final String selfSectionTitle;
  final String selfSectionSubtitle;
  final String selfProfilePhotoUrl;
  final VoidCallback? onSelfSelected;
  final VoidCallback? onShowAllPressed;

  @override
  Widget build(BuildContext context) {
    final shouldRecentSectionBeVisible = recentBeneficiaries.isNotEmpty && recentBeneficiaryBuilder != null;
    final shouldSelfSectionBeVisible = selfSectionTitle.isNotEmpty && onSelfSelected != null;
    return NestedScrollView(
      physics: const AlwaysScrollableBouncingPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (_, __) {
        return [
          if (searchResultsBuilder != null) ...[
            SliverToBoxAdapter(
              child: AppSearchBarComponent.withFullScreenView(
                placeholder: searchPlaceholder,
                resultsBuilder: searchResultsBuilder!,
              ),
            ),
            AppGaps.ver.s12.asSliver(),
          ],
        ];
      },
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              if (shouldRecentSectionBeVisible) ...[
                AppSectionLabel.small(
                  label: recentBeneficiariesSectionLabel,
                ),
                AppGaps.ver.s16,
                SizedBox(
                  height: AppSizes.h.custom(92),
                  width: double.infinity,
                  child: AppListViewComponent.list(
                    physics: const AlwaysScrollableBouncingPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: recentBeneficiaries.length,
                    separatorBuilder: (_, __) => AppGaps.hor.s8,
                    itemBuilder: (_, index) {
                      final beneficiary = recentBeneficiaries.elementAt(index);
                      return recentBeneficiaryBuilder!(context, index, beneficiary);
                    },
                  ),
                ),
                AppGaps.ver.s12,
              ],
            ],
          ),
          SliverToBoxAdapter(
            child: AppListItemComponent.arrowForward(
              title: addNewBeneficiarySectionLabel,
              onPressed: onAddNewBeneficiary,
              leading: AppAssetBuilder.svg(
                svg: Assets.icons.keyboard,
                config: AssetBuilderConfig.svg(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ),
          AppGaps.ver.s12.asSliver(),
          if (shouldSelfSectionBeVisible) ...[
            SliverToBoxAdapter(
              child: AppListItemComponent.arrowForward(
                title: selfSectionTitle,
                subtitle: selfSectionSubtitle,
                onPressed: onSelfSelected,
                leadingWidget: AppIdentityTagComponent.picture(
                  imageUrl: selfProfilePhotoUrl,
                ),
              ),
            ),
            AppGaps.ver.s12.asSliver(),
          ],
          SliverToBoxAdapter(
            child: AppSectionLabel.small(label: beneficiariesSectionLabel),
          ),
          if (showRequestBeneficiaryPermission && !isBeneficiariesLoading) ...[
            AppGaps.ver.s16.asSliver(),
            SliverToBoxAdapter(
              child: AppSectionEmptyStatePlaceholder(
                title: context.l10n.beneficiariesContactPermission,
                description: context.l10n.beneficiariesGiveContactPermission,
                icon: AppAssetBuilder.svg(svg: Assets.icons.members),
                actionLabel: context.l10n.authorize,
                onActionPressed: onRequestPermissionPressed,
              ),
            ),
          ],
          if (showRequestBeneficiaryPermission && isBeneficiariesLoading) ...[
            const SliverToBoxAdapter(
              child: AppLoaderWidget(),
            ),
          ],
          AppListViewComponent.sliver(
            itemCount: beneficiaries.length,
            itemBuilder: (_, index) {
              final beneficiary = beneficiaries.elementAt(index);
              return beneficiaryBuilder(
                context,
                index,
                beneficiary,
              );
            },
          ),
        ],
      ),
    );
  }
}
