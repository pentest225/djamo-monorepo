part of 'app_badge_component.dart';

class _ServiceIconBadge extends AppBadgeComponent {
  const _ServiceIconBadge({
    required super.child,
    super.showBadge,
    super.badgeContent,
    super.badgeColor,
  });

  @override
  Widget build(BuildContext context) {
    return showBadge
        ? Stack(
            alignment: Alignment.topRight,
            children: [
              child,
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: AppSizes.h.s16,
                  width: AppSizes.w.s16,
                  decoration: BoxDecoration(
                    color: badgeColor ?? context.colorScheme.error,
                    shape: BoxShape.circle,
                  ),
                  child: badgeContent == null
                      ? null
                      : AppTextComponent.labelSmall(
                          badgeContent!,
                          color: Colors.white,
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
            ],
          )
        : child;
  }
}
