import 'package:app_ui/src/components/specific_informations/badges/app_badge_component.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/core/hooks/hooks.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

part '_app_navigation_destination_item.dart';

/// A navigation bar for the dashboard.
class AppNavigationBarComponent extends StatelessWidget {
  /// Creates a navigation bar for the dashboard.
  const AppNavigationBarComponent({
    required this.destinations,
    required this.onDestinationSelected,
    super.key,
    this.activeIndex = 0,
  });

  /// The initial index of the selected destination.
  final int activeIndex;

  /// The destinations of the navigation bar.
  final List<AppNavigationDestinationItem> Function(int selectedIndex) destinations;

  /// The callback when a destination is selected.
  final void Function(int index) onDestinationSelected;
  @override
  Widget build(BuildContext context) {
    final selected = activeIndex;
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.customColorScheme.contentLowest.withOpacity(.5),
            width: AppSizes.w.custom(2),
          ),
        ),
      ),
      child: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: context.colorScheme.surfaceContainerLowest,
          elevation: 0,
          height: AppSizes.h.custom(60),
          labelTextStyle: WidgetStateTextStyle.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return context.theme.textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 16 / 12,
                );
              }
              return context.theme.textTheme.labelMedium!;
            },
          ),
        ),
        child: NavigationBar(
          indicatorColor: context.theme.colorScheme.primaryContainer,
          onDestinationSelected: onDestinationSelected,
          selectedIndex: selected,
          destinations: destinations(selected).mapIndexed((index, e) {
            final isSelected = index == selected;
            final svgConfig = AssetBuilderConfig.svg(
              color: isSelected ? context.colorScheme.primary : context.customColorScheme.contentLow,
            );
            Widget getNavigationDestination() {
              return Padding(
                padding: AppPaddings.s8.top,
                child: NavigationDestination(
                  key: e.key ?? ValueKey(index),
                  icon: useReturnValue(() {
                    if (e.showNonContentBadge) {
                      return AppBadgeComponent.basicBadge(
                        child: e.icon.mayOverrideConfig(
                          config: svgConfig,
                        ),
                      );
                    }
                    return AppBadgeComponent.basicBadge(
                      showBadge: e.hasBadge,
                      badgeContent: e.badgeContent,
                      child: e.icon.mayOverrideConfig(
                        config: svgConfig,
                      ),
                    );
                  }),
                  label: e.label,
                  selectedIcon: useReturnValue(() {
                    if (e.selectedIcon == null) return null;
                    return AppBadgeComponent.basicBadge(
                      child: e.selectedIcon!.mayOverrideConfig(
                        config: svgConfig,
                      ),
                    );
                  }),
                  tooltip: e.tooltip,
                  enabled: e.enabled,
                ),
              );
            }

            if (e.wrapper != null) {
              return e.wrapper!.call(getNavigationDestination());
            }
            return getNavigationDestination();
          }).toList(),
        ),
      ),
    );
  }
}
