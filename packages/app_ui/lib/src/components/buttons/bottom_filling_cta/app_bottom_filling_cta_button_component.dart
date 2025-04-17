import 'package:app_ui/src/components/buttons/common_buttons/app_common_button_component.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:flutter/material.dart';

part '_pair_filling_button_cta.dart';
part '_single_primary_filling_button_cta.dart';
part '_single_secondary_filling_button_cta.dart';

class AppBottomFillingCtaButtonComponent extends StatelessWidget {
  const AppBottomFillingCtaButtonComponent({
    this.label = '',
    this.isEnabled = true,
    this.fullMaxWidth = true,
    this.onPressed,
    this.foregroundColor,
    this.borderColor,
    this.primaryCTALabel,
    this.secondaryCTALabel,
    this.onPrimaryCTAPressed,
    this.onSecondaryCTAPressed,
    this.isPrimaryCTAEnabled = true,
    this.isSecondaryCTAEnabled = true,
    this.secondaryCTAForegroundColor,
    this.secondaryCTABorderColor,
    super.key,
  });

  const factory AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta({
    required String label,
    bool isEnabled,
    bool fullMaxWidth,
    void Function()? onPressed,
    Key? key,
  }) = _SinglePrimaryFillingButtonCta;

  const factory AppBottomFillingCtaButtonComponent.singleSecondaryFillingButtonCta({
    required String label,
    bool isEnabled,
    bool fullMaxWidth,
    void Function()? onPressed,
    Color? foregroundColor,
    Color? borderColor,
    Key? key,
  }) = _SingleSecondaryFillingButtonCta;

  const factory AppBottomFillingCtaButtonComponent.pairFillingButtonCta({
    required String primaryCTALabel,
    required String secondaryCTALabel,
    void Function()? onPrimaryCTAPressed,
    void Function()? onSecondaryCTAPressed,
    bool isPrimaryCTAEnabled,
    bool isSecondaryCTAEnabled,
    Color? secondaryCTAForegroundColor,
    Color? secondaryCTABorderColor,
    bool hideSecondaryButton,
    Key? key,
  }) = _PairFillingButtonCta;

  final String label;
  final bool? isEnabled;
  final bool? fullMaxWidth;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final Color? borderColor;

  final String? primaryCTALabel;
  final String? secondaryCTALabel;
  final void Function()? onPrimaryCTAPressed;
  final void Function()? onSecondaryCTAPressed;
  final bool isPrimaryCTAEnabled;
  final bool isSecondaryCTAEnabled;
  final Color? secondaryCTAForegroundColor;
  final Color? secondaryCTABorderColor;

  @override
  Widget build(BuildContext context) {
    return _SinglePrimaryFillingButtonCta(
      label: label,
      onPressed: onPressed,
      isEnabled: isEnabled,
      fullMaxWidth: fullMaxWidth,
    );
  }
}
