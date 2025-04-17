part of 'app_text_field_component.dart';

class _OperationAmountSmallFieldBuilder extends AppTextFieldComponent {
  const _OperationAmountSmallFieldBuilder({
    super.key,
    super.labelText,
    super.autoFocus,
    super.textAlign,
    super.controller,
    super.focusNode,
    super.onTapOutside,
    super.contentPadding,
    this.initialAmount,
    super.textInputAction,
    String? Function(double)? validator,
    void Function(double)? onChanged,
    this.hideCurrencySymbol = false,
    super.autovalidateMode,
    super.showCancelActionOnValid,
  })  : _validator = validator,
        _onChanged = onChanged;

  final void Function(double)? _onChanged;
  final String? Function(double)? _validator;
  final double? initialAmount;
  final bool hideCurrencySymbol;

  @override
  State<_OperationAmountSmallFieldBuilder> createState() => _OperationAmountSmallFieldBuilderState();
}

class _OperationAmountSmallFieldBuilderState extends State<_OperationAmountSmallFieldBuilder> {
  late CurrencyTextInputFormatter _formatter;
  late FocusNode _focusNode;
  bool _hasFocus = false;
  String? _formattedInitialAmount;

  void _initController() {
    _focusNode = widget.focusNode ?? FocusNode();
    if (widget.showCancelActionOnValid) {
      _hasFocus = widget.autoFocus ?? _focusNode.hasFocus;
      _focusNode.addListener(() {
        setState(() {
          _hasFocus = _focusNode.hasFocus;
        });
      });
    }
    _formatter = useCurrencyInputFormatter(context);
    if (widget.initialAmount != null) {
      final formattedInitialAmount = _formatter.formatDouble(widget.initialAmount ?? 0);
      widget.controller?.text = formattedInitialAmount;
      _formattedInitialAmount = formattedInitialAmount;
    }
  }

  @override
  void initState() {
    _initController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final inputFormatters = [
      ...useCurrencyInputFormatters(context),
      _formatter,
    ];
    final maxIconSize = AppSizes.f.s40;
    final iconConstraints = BoxConstraints(
      maxWidth: maxIconSize,
      maxHeight: maxIconSize,
      minWidth: maxIconSize,
      minHeight: maxIconSize,
    );
    return TextFormField(
      autofocus: widget.autoFocus ?? true,
      autovalidateMode: widget.autovalidateMode ?? AutovalidateMode.onUnfocus,
      controller: widget.controller,
      textAlign: widget.textAlign ?? TextAlign.end,
      textAlignVertical: TextAlignVertical.bottom,
      focusNode: _focusNode,
      initialValue: widget.controller == null ? _formattedInitialAmount : null,
      keyboardType: TextInputType.number,
      textInputAction: widget.textInputAction,
      onTapOutside: widget.onTapOutside != null
          ? (_) {
              widget.onTapOutside?.call();
            }
          : null,
      inputFormatters: inputFormatters,
      onChanged: (value) {
        final number = _getNumber(value);
        final hasErr = widget._validator?.call(number.toDouble()) != null;
        if (hasErr) {
          widget._onChanged?.call(0);
          return;
        }
        widget._onChanged?.call(number.toDouble());
      },
      validator: (value) {
        final number = _getNumber(value ?? '');
        return widget._validator?.call(number.toDouble());
      },
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        labelText: widget.labelText,
        suffixIconConstraints: iconConstraints,
        prefixIconConstraints: iconConstraints,
        errorMaxLines: 2,
        suffixIcon: useReturnValue(() {
          final hasValue = widget.controller?.text.isNotEmpty ?? false;
          final hasErr = widget._validator?.call(_getNumber(widget.controller?.text ?? '').toDouble()) != null;
          if (widget.showCancelActionOnValid && !hasErr && !_hasFocus) {
            return Align(
              child: AppAssetBuilder.svg(
                onTap: () {
                  widget.controller?.clear();
                  widget.onChanged?.call(null);
                  _focusNode.requestFocus();
                },
                svg: Assets.icons.cancel,
                config: AssetBuilderConfig.svg(
                  height: AppSizes.f.s20,
                  width: AppSizes.f.s20,
                  color: context.colorScheme.onSurface,
                ),
              ),
            );
          }
          if (hasValue && hasErr) {
            return Align(
              child: Assets.icons.error.svg(
                colorFilter: context.colorScheme.error.toSrcMode(),
                height: AppSizes.f.s20,
                width: AppSizes.f.s20,
              ),
            );
          }
          return widget.hideCurrencySymbol
              ? null
              : const AppTextComponent.bodyLarge(
                  'F',
                );
        }),
      ),
    );
  }

  num _getNumber(String value) {
    final numberFromFormatter = _formatter.getUnformattedValue();
    if (value.isEmpty) return numberFromFormatter;
    final number = num.tryParse(value.replaceFirst('.', ''));
    if (number == null) return numberFromFormatter;
    if (value == _formatter.getFormattedValue()) return numberFromFormatter;

    return number;
  }
}
