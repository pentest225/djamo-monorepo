part of 'app_international_phone_number_component.dart';

///
class _CountrySelectorComponent extends StatelessWidget {
  ///
  const _CountrySelectorComponent({
    required this.callingCode,
    required this.flagAsset,
    super.key,
    this.focusNode,
    this.onPressed,
    this.enabled = true,
  });

  ///
  final FocusNode? focusNode;

  ///
  final String callingCode;

  ///
  final AppAssetBuilder flagAsset;

  ///
  final VoidCallback? onPressed;

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final defaultBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: enabled ? context.colorScheme.outline : Colors.transparent,
      ),
    );
    final maxIconSize = AppSizes.f.s40;
    final iconConstraints = BoxConstraints(
      maxWidth: maxIconSize,
      maxHeight: maxIconSize,
      minWidth: maxIconSize,
      minHeight: maxIconSize,
    );
    return Opacity(
      opacity: enabled ? 1 : .38,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onPressed,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: AppSizes.w.custom(133),
          ),
          child: AbsorbPointer(
            child: IntrinsicWidth(
              child: TextFormField(
                key: ValueKey(callingCode),
                initialValue: callingCode,
                readOnly: true,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: defaultBorder,
                  enabledBorder: defaultBorder,
                  label: const SizedBox.shrink(),
                  contentPadding: EdgeInsets.only(
                    bottom: AppSizes.f.s16,
                  ),
                  prefix: SizedBox(
                    width: AppSizes.f.custom(0),
                  ),
                  suffix: SizedBox(
                    width: enabled ? AppSizes.f.custom(0) : AppSizes.f.s12,
                  ),
                  helperText: ' \n ',
                  errorStyle: const TextStyle(height: 0),
                  helperStyle: const TextStyle(height: 0),
                  errorMaxLines: 2,
                  prefixIconConstraints: iconConstraints,
                  suffixIconConstraints: iconConstraints,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(
                      AppSizes.f.s8,
                    ),
                    child: ClipOval(
                      child: flagAsset.mayOverrideConfig(
                        config: AssetBuilderConfig.image(
                          height: AppSizes.f.s24,
                          width: AppSizes.f.s24,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  suffixIcon: !enabled
                      ? null
                      : Padding(
                          padding: AppPaddings.s8.symmetric,
                          child: Icon(
                            Icons.arrow_drop_down_sharp,
                            size: AppSizes.f.s24,
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
