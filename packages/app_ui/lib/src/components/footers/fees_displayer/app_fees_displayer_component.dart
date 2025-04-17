import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class FeesItem {
  FeesItem({
    required this.label,
    required this.value,
    this.icon,
    this.color,
  });
  final String label;
  final String value;
  final AppAssetBuilder? icon;
  final Color? color;
}

typedef ChargedAmountItem = ({
  String label,
  String value,
});
typedef WithdrawalFeesConfig = ({
  String label,
  bool initialValue,
  double fees,
  ValueChanged<bool> onChanged,
});

class AppFeesDisplayerComponent extends StatelessWidget {
  const AppFeesDisplayerComponent({
    required this.fees,
    this.chargedAmount,
    this.withdrawalFeesConfig,
    super.key,
  });

  final List<FeesItem> fees;
  final ChargedAmountItem? chargedAmount;
  final WithdrawalFeesConfig? withdrawalFeesConfig;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (withdrawalFeesConfig != null) ...[
          _WithdrawalFeesComponent(
            withdrawalFeesConfig: withdrawalFeesConfig!,
          ),
          const AppDividerComponent.horizontal(),
          AppGaps.ver.s8,
        ],
        for (int i = 0; i < fees.length; i++) ...[
          AppDetailListItemComponent.medium(
            label: fees.elementAt(i).label,
            value: fees.elementAt(i).value,
            labelIcon: fees.elementAt(i).icon,
            foregroundColor: fees.elementAt(i).color,
          ),
          if (i < fees.length - 1) AppGaps.ver.s8,
        ],
        if (chargedAmount != null) ...[
          AppGaps.ver.s8,
          AppDetailListItemComponent.prominent(
            label: chargedAmount!.label,
            value: chargedAmount!.value,
          ),
        ],
      ],
    );
  }
}

class _WithdrawalFeesComponent extends StatefulWidget {
  const _WithdrawalFeesComponent({
    required this.withdrawalFeesConfig,
  });
  final WithdrawalFeesConfig withdrawalFeesConfig;

  @override
  State<_WithdrawalFeesComponent> createState() => _WithdrawalFeesComponentState();
}

class _WithdrawalFeesComponentState extends State<_WithdrawalFeesComponent> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.withdrawalFeesConfig.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: AppTextComponent.bodyMedium(
        widget.withdrawalFeesConfig.label,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_isSelected) ...[
            AppTextComponent.labelLargeProminent(
              widget.withdrawalFeesConfig.fees.toCurrency(context),
            ),
            AppGaps.hor.s16,
          ],
          AppSwitchButtonComponent.basic(
            isSelected: _isSelected,
            onChanged: (v) {
              setState(() {
                _isSelected = v;
              });
              widget.withdrawalFeesConfig.onChanged(v);
            },
          ),
        ],
      ),
    );
  }
}
