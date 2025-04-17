import 'package:app_ui/app_ui.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppFunctionalityPresentationView extends StatelessWidget {
  const AppFunctionalityPresentationView({
    required this.ctaLabel, required this.illustration, required this.items, super.key,
    this.onCTAPressed,
  });

  final String ctaLabel;
  final AppAssetBuilder illustration;
  final List<FunctionalityItem> items;
  final void Function()? onCTAPressed;

  @override
  Widget build(BuildContext context) {
    final count = items.length;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: AppPaddings.s16.horizontal,
                    child: Assets.illustrations.moveToMfi.image(
                      height: AppSizes.h.custom(120),
                    ),
                  ),
                ),
                AppGaps.ver.s24.asSliver(),
                SliverPadding(
                  padding: AppPaddings.s16.horizontal,
                  sliver: AppListViewComponent.sliver(
                    itemCount: count,
                    itemBuilder: (_, index) {
                      final item = items[index];
                      return AppIllustrationListItemComponent(
                        illustration: item.illustration,
                        title: item.title,
                      );
                    },
                    separatorBuilder: (_, __) => AppGaps.ver.s16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppPaddings.s16.horizontal.copyWith(
              bottom: AppSizes.h.s16,
              top: AppSizes.h.s16,
            ),
            child: AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
              label: ctaLabel,
              onPressed: onCTAPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class FunctionalityItem extends Equatable {
  const FunctionalityItem({
    required this.title,
    required this.illustration,
    this.description,
  });
  final String title;
  final String? description;
  final AppAssetBuilder illustration;

  @override
  List<Object?> get props => [title, description, illustration];
}
