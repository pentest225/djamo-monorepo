import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppCreditEditableItemCardComponent extends StatefulWidget {
  const AppCreditEditableItemCardComponent({
    required this.minAmount,
    required this.maxAmount,
    this.initialValue,
    super.key,
    this.divisions,
    this.onAmountChanged,
    this.onReceptionModeChanged,
  });
  final double minAmount;
  final double maxAmount;
  final double? initialValue;
  final int? divisions;
  final void Function(double)? onAmountChanged;
  final VoidCallback? onReceptionModeChanged;

  @override
  State<AppCreditEditableItemCardComponent> createState() => _AppCreditEditableItemCardComponentState();
}

class _AppCreditEditableItemCardComponentState extends State<AppCreditEditableItemCardComponent> {
  double _selectedAmount = 0;

  @override
  void initState() {
    _selectedAmount = widget.initialValue ?? widget.minAmount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.colorScheme.surfaceContainerLow,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: AppTextComponent.titleMedium(
                  context.l10n.loanAmount,
                ),
              ),
              AppGaps.hor.s16,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppAssetBuilder.svg(
                    svg: Assets.icons.modeEdit,
                    config: AssetBuilderConfig.svg(
                      color: context.colorScheme.primary,
                      height: AppSizes.h.s18,
                      width: AppSizes.h.s18,
                    ),
                  ),
                  AppGaps.hor.s8,
                  AppTextComponent.labelLarge(
                    _selectedAmount.toCurrency(context),
                    color: context.colorScheme.primary,
                  ),
                ],
              ),
            ],
          ),
          AppSliderButtonComponent(
            horizontalPadding: EdgeInsets.zero,
            sliderValue: _selectedAmount,
            maxValue: widget.maxAmount,
            divisions: widget.divisions ?? widget.maxAmount ~/ widget.minAmount,
            showLabel: false,
            hideMarksOnDivisions: true,
            onChanged: (newAmount) {
              setState(() {
                _selectedAmount = newAmount;
                widget.onAmountChanged?.call(newAmount);
              });
            },
          ),
          Row(
            children: [
              Expanded(
                child: AppTextComponent.bodySmall(
                  widget.minAmount.toCurrency(context),
                ),
              ),
              AppGaps.hor.s16,
              Expanded(
                child: AppTextComponent.bodySmall(
                  widget.maxAmount.toCurrency(context),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          AppGaps.ver.s32,
          AppTextFieldComponent.dropdown(
            labelText: context.l10n.receptionMode,
            onPressed: () {
              widget.onReceptionModeChanged?.call();
            },
            value: context.l10n.instantReception,
          ),
        ],
      ),
    );
  }
}
