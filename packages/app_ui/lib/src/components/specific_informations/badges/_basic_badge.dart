part of 'app_badge_component.dart';

class _BasicBadge extends AppBadgeComponent {
  const _BasicBadge({
    required super.child,
    super.showBadge,
    super.badgeContent,
    super.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    return badge.Badge(
      showBadge: showBadge,
      position: useReturnValue(() {
        if (badgeContent == null) {
          return badge.BadgePosition.topEnd(top: -AppSizes.h.s6, end: -AppSizes.w.s8);
        }
        return null;
      }),
      badgeContent: badgeContent != null
          ? AppTextComponent.labelSmall(
              badgeContent!,
              color: Colors.white,
            )
          : null,
      badgeStyle: badge.BadgeStyle(
        badgeColor: badgeColor ?? context.colorScheme.error,
      ),
      child: child,
    );
  }
}
