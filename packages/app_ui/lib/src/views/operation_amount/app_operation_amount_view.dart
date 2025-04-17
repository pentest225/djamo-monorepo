import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppOperationAmountView extends StatefulWidget {
  const AppOperationAmountView({
    super.key,
    this.initialAmount = 10000,
    this.validator,
    this.enableCTAWhen,
    this.onAmountChanged,
    this.onAmountSubmitted,
    this.primaryCTALabel,
    this.feesDisplayerBuilder,
  });

  final double? initialAmount;
  final void Function(double)? onAmountChanged;
  final String? Function(double)? validator;
  final bool Function(double amount, {required bool isValid})? enableCTAWhen;
  final String? primaryCTALabel;
  final void Function(double amount)? onAmountSubmitted;
  final Widget Function(BuildContext, double amount, {required bool isValid})? feesDisplayerBuilder;

  @override
  State<AppOperationAmountView> createState() => _AppOperationAmountViewState();
}

class _AppOperationAmountViewState extends State<AppOperationAmountView> {
  late final ValueNotifier<double> _amount;

  @override
  void initState() {
    _amount = ValueNotifier<double>(widget.initialAmount ?? 0);
    super.initState();
  }

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldComponent.withFooter(
      horizontalPadding: AppSizes.w.s16,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppGaps.ver.s80,
            AppTextFieldComponent.operationAmountLarge(
              initialAmount: widget.initialAmount,
              onChanged: (amount) {
                _amount.value = amount;
                widget.onAmountChanged?.call(amount);
              },
              validator: widget.validator,
            ),
          ],
        ),
      ),
      footer: [
        if (widget.feesDisplayerBuilder != null) ...[
          ValueListenableBuilder(
            valueListenable: _amount,
            builder: (context, value, __) {
              final isValid = widget.validator?.call(value) == null;
              return widget.feesDisplayerBuilder!.call(context, value, isValid: isValid);
            },
          ),
          AppGaps.ver.s16,
        ],
        ValueListenableBuilder(
          valueListenable: _amount,
          builder: (_, value, __) {
            final isValid = widget.validator?.call(value) == null;
            return AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
              isEnabled: widget.enableCTAWhen?.call(value, isValid: isValid) ?? isValid,
              label: widget.primaryCTALabel ?? context.l10n.confirm,
              onPressed: () {
                widget.onAmountSubmitted?.call(_amount.value);
              },
            );
          },
        ),
      ],
    );
  }
}
