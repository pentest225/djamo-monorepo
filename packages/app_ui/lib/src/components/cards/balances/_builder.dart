part of 'app_balance_card_component.dart';

class _Builder extends StatefulWidget {
  const _Builder({
    required this.label,
    required this.balance,
    this.decimalDigits = 0,
    this.name,
    this.icon,
    this.onPressed,
    this.bottom,
    this.action,
    this.trailing,
    this.isMini = false,
    this.animationDuration,
    this.locale,
    this.isBalanceVisible = false,
    this.showToggleVisibilityIcon = false,
    this.onBalanceVisibilityChanged,
  });

  final String? name;
  final String label;
  final AppAssetBuilder? icon;
  final ValueHistory<num> balance;
  final int decimalDigits;
  final VoidCallback? onPressed;
  final Widget? bottom;
  final Widget? action;
  final Widget? trailing;
  final bool isMini;
  final Duration? animationDuration;
  final Locale? locale;
  final bool isBalanceVisible;
  final bool showToggleVisibilityIcon;
  final ValueChanged<bool>? onBalanceVisibilityChanged;

  @override
  State<_Builder> createState() => _BuilderState();
}

class _BuilderState extends State<_Builder> {
  bool _isBalanceVisible = false;

  @override
  void initState() {
    _isBalanceVisible = widget.isBalanceVisible;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        border: Border.all(
          color: context.customColorScheme.primaryCardOutline,
          width: AppSizes.w.custom(1),
        ),
        borderRadius: AppBorderRadius.s12.all,
      ),
      child: InkWell(
        onTap: widget.onPressed,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Padding(
          padding: AppPaddings.s16.symmetric,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: _toggleBalanceVisibility,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.icon != null) ...[
                            SizedBox.square(
                              dimension: AppSizes.h.s20,
                              child: Align(
                                child: widget.icon?.mayOverrideConfig(
                                  config: AssetBuilderConfig.icon(
                                    size: AppSizes.f.s20,
                                    color: context.customColorScheme.contentLowest,
                                  ).$svg(
                                    height: AppSizes.f.s20,
                                    width: AppSizes.f.s20,
                                    color: context.customColorScheme.contentLowest,
                                  ),
                                ),
                              ),
                            ),
                            AppGaps.hor.s4,
                          ],
                          AppTextComponent.titleSmall(
                            widget.label,
                            color: context.customColorScheme.contentLowest,
                          ),
                          if (widget.showToggleVisibilityIcon) ...[
                            AppGaps.hor.s8,
                            SizedBox.square(
                              dimension: AppSizes.h.s16,
                              child: useReturnValue(
                                () {
                                  final color = context.customColorScheme.contentLowest.toSrcMode();
                                  final size = AppSizes.f.s16;
                                  if (_isBalanceVisible) {
                                    return Assets.icons.visibilityOff.svg(
                                      colorFilter: color,
                                      height: size,
                                      width: size,
                                    );
                                  }
                                  return Assets.icons.eye.svg(
                                    colorFilter: color,
                                    height: size,
                                    width: size,
                                  );
                                },
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    AppGaps.ver.s4,
                    AppBalanceTextComponent(
                      balance: widget.balance,
                      isBalanceVisible: _isBalanceVisible,
                      isMini: widget.isMini,
                      onPressed: _toggleBalanceVisibility,
                      animationDuration: widget.animationDuration,
                      locale: widget.locale,
                      decimalDigits: widget.decimalDigits,
                    ),
                    if (widget.bottom != null) ...[
                      AppGaps.ver.s4,
                      widget.bottom!,
                    ],
                    if (widget.action != null) ...[
                      AppGaps.ver.s20,
                      widget.action!,
                    ],
                  ],
                ),
              ),
              if (widget.trailing != null) ...[
                AppGaps.hor.s8,
                widget.trailing!,
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _toggleBalanceVisibility() {
    if (widget.onBalanceVisibilityChanged == null) {
      widget.onPressed?.call();
      return;
    }
    setState(
      () {
        _isBalanceVisible = !_isBalanceVisible;
      },
    );
    widget.onBalanceVisibilityChanged?.call(_isBalanceVisible);
  }
}
