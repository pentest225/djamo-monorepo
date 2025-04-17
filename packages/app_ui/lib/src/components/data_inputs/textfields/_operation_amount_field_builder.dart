part of 'app_text_field_component.dart';

class _OperationAmountFieldBuilder extends AppTextFieldComponent {
  const _OperationAmountFieldBuilder({
    super.key,
    super.autoFocus,
    super.controller,
    super.focusNode,
    super.onTapOutside,
    this.initialAmount,
    String? Function(double)? validator,
    void Function(double)? onChanged,
    super.textInputAction,
    super.currency,
    super.readOnly,
    super.helperText,
    ValueNotifier<double?>? valueController,
  })  : _validator = validator,
        _onChanged = onChanged,
        _valueController = valueController;

  final ValueNotifier<double?>? _valueController;
  final void Function(double)? _onChanged;
  final String? Function(double)? _validator;
  final double? initialAmount;

  @override
  State<_OperationAmountFieldBuilder> createState() => _OperationAmountFieldBuilderState();
}

class _OperationAmountFieldBuilderState extends State<_OperationAmountFieldBuilder> {
  late CurrencyTextInputFormatter _formatter;
  late FocusNode _focusNode;
  late final TextEditingController _innerController;

  bool _hasFocus = false;
  String _errMessage = '';
  void _initController() {
    _innerController = widget.controller ?? TextEditingController();
    _focusNode = (widget.focusNode ?? FocusNode())
      ..addListener(
        () {
          if (!mounted) return;
          setState(
            () {
              _hasFocus = _focusNode.hasFocus;
            },
          );
        },
      );
    _formatter = useCurrencyInputFormatter(context);
    if (widget.initialAmount != null) {
      final initialAmount = widget.initialAmount ?? 0;
      final formattedInitialAmount = _formatter.formatDouble(initialAmount);
      _innerController.text = formattedInitialAmount;
      // TODO(TseoH): Check initial amount validation
      if (initialAmount > 0) {
        final err = widget._validator?.call(initialAmount);
        if (err == null) return;
        setState(() {
          _errMessage = err;
        });
      }
    }
    widget._valueController?.addListener(() {
      final value = widget._valueController?.value;
      if (value == null) {
        _innerController.text = '';
      } else {
        final formattedValue = _formatter.formatDouble(value);
        _innerController.text = formattedValue;
      }

      final err = widget._validator?.call(value ?? 0);
      setState(() {
        _errMessage = err ?? '';
      });
    });
  }

  @override
  void initState() {
    _initController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!_focusNode.hasFocus) {
          _focusNode.requestFocus();
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: AppSizes.w.custom(.5),
                right: AppSizes.w.custom(.5),
                bottom: -AppSizes.h.custom(1.5),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 270),
                  key: ValueKey('$_errMessage$_hasFocus'),
                  height: AppSizes.h.custom(40),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: useReturnValue(
                          () {
                            if (_errMessage.isNotEmpty) return context.colorScheme.error;
                            if (_hasFocus) return context.colorScheme.primary;
                            return context.colorScheme.outline;
                          },
                        ),
                        width: useReturnValue(
                          () {
                            if (_hasFocus || _errMessage.isNotEmpty) return AppSizes.w.custom(2);
                            return AppSizes.w.custom(1);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                //color: context.colorScheme.surface,
                width: double.infinity,
                height: AppSizes.h.custom(72 + 8),
                alignment: Alignment.center,
                padding: AppPaddings.custom(6).bottom,
                child: Align(
                  child: IntrinsicWidth(
                    child: TextFormField(
                      autofocus: widget.autoFocus ?? true,
                      controller: _innerController,
                      textAlign: TextAlign.center,
                      focusNode: _focusNode,
                      readOnly: widget.readOnly,
                      //initialValue: widget.controller == null ? _formattedInitialAmount : null,
                      textAlignVertical: TextAlignVertical.center,
                      textInputAction: widget.textInputAction ?? TextInputAction.done,
                      style: context.theme.textTheme.displayLarge?.copyWith(
                        height: AppSizes.f.custom(64) / AppSizes.f.custom(57),
                      ),
                      keyboardType: TextInputType.number,
                      onTapOutside: widget.onTapOutside != null
                          ? (_) {
                              widget.onTapOutside?.call();
                            }
                          : null,
                      inputFormatters: [
                        ...useCurrencyInputFormatters(context),
                        _formatter,
                      ],
                      onChanged: (value) {
                        final number = _formatter.getUnformattedValue();
                        final err = widget._validator?.call(number.toDouble());
                        setState(() {
                          _errMessage = err ?? '';
                        });
                        widget._onChanged?.call(number.toDouble());
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: context.theme.inputDecorationTheme.contentPadding?.horizontal ?? 0,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        suffixIconConstraints: const BoxConstraints(),
                        suffixIcon: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppTextComponent.titleLarge(
                              widget.currency,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_errMessage.isNotEmpty) ...[
            Padding(
              padding: AppPaddings.custom(6).top,
              child: AppTextComponent.bodySmall(
                _errMessage,
                color: context.colorScheme.error,
                textAlign: TextAlign.center,
              ),
            ),
          ],
          if (widget.helperText?.orNull != null) ...[
            Padding(
              padding: AppPaddings.custom(6).top,
              child: AppTextComponent.bodySmall(
                widget.helperText ?? '',
                textAlign: TextAlign.center,
                useRichText: true,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
