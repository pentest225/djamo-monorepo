part of 'app_navigation_bar_component.dart';

class AppNavigationDestinationItem extends Equatable {
  const AppNavigationDestinationItem({
    required this.icon,
    required this.label,
    this.enabled = true,
    this.showNonContentBadge = false,
    this.key,
    this.selectedIcon,
    this.badgeContent,
    this.tooltip,
    this.wrapper,
  });

  final Key? key;

  /// The icon of the destination.
  /// Prefer using [AppAssetBuilder.svg] or [AppAssetBuilder.icon] to create the icon.
  final AppAssetBuilder icon;

  /// The selected icon of the destination.
  /// Prefer using [AppAssetBuilder.svg] or [AppAssetBuilder.icon] to create the icon.
  final AppAssetBuilder? selectedIcon;
  final String label;
  final String? badgeContent;
  final bool showNonContentBadge;
  final String? tooltip;
  final bool enabled;

  /// The wrapper of the destination.
  /// This is useful for wrapping the destination with a widget.
  final Widget Function(Widget child)? wrapper;

  bool get hasBadge => badgeContent != null && badgeContent!.isNotEmpty;

  @override
  List<Object?> get props => [
        icon,
        selectedIcon,
        label,
        badgeContent,
        tooltip,
        enabled,
        wrapper,
        showNonContentBadge,
      ];
}
