import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

class AppAutomaticDepositFrequencyConfigurationView extends StatefulWidget {
  const AppAutomaticDepositFrequencyConfigurationView({
    required this.frequency,
    required this.onSavedPressed,
    this.monthlyLimit = 28,
    super.key,
  });
  final String frequency;
  final void Function(String) onSavedPressed;
  final int monthlyLimit;

  @override
  State<AppAutomaticDepositFrequencyConfigurationView> createState() => _AppAutomaticDepositFrequencyConfigurationViewState();
}

class _AppAutomaticDepositFrequencyConfigurationViewState extends State<AppAutomaticDepositFrequencyConfigurationView> with UIFrequencyFacingMixin {
  UIPeriodicityEnum _period = UIPeriodicityEnum.daily;

  late UIWeekDayEnum _weekOfDay;

  late int _dayOfMonth;

  String _nextFrequency = '';

  @override
  void initState() {
    _nextFrequency = widget.frequency;
    _weekOfDay = UIWeekDayEnum.fromString(_nextFrequency);
    _dayOfMonth = int.tryParse(_nextFrequency) ?? 1;
    _period = getFrequencyPeriodicity(_nextFrequency);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldComponent.withFooter(
      horizontalPadding: AppSizes.w.s16,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppGaps.ver.s16,
            AppSegmentedButtonComponent(
              fillMaxWidth: true,
              showSelectedIcon: false,
              items: UIPeriodicityEnum.vaults.map((e) {
                final l10n = context.l10n;
                return SegmentItem(
                  value: e,
                  label: switch (e) {
                    UIPeriodicityEnum.daily => l10n.byDay,
                    UIPeriodicityEnum.weekly => l10n.byWeek,
                    UIPeriodicityEnum.monthly => l10n.byMonth,
                    UIPeriodicityEnum.yearly => l10n.byYear,
                  },
                );
              }).toList(),
              selectedValue: {_period},
              onSelectionChanged: (v) {
                final p = v.first;
                setState(() {
                  _period = p;
                  if (p.isDaily) {
                    _nextFrequency = p.key;
                    return;
                  }
                  if (p.isWeekly) {
                    _weekOfDay = UIWeekDayEnum.monday;
                    _nextFrequency = _weekOfDay.key;
                    return;
                  }
                  if (p.isMonthly) {
                    _dayOfMonth = 1;
                    _nextFrequency = _dayOfMonth.toString();
                    return;
                  }
                  _nextFrequency = '';
                });
              },
            ),
            if (_period.isWeekly || _period.isMonthly) ...[
              AppGaps.ver.s24,
              AppTextComponent.bodyMedium(
                context.l10n.supplyDay,
                color: context.customColorScheme.contentLow,
              ),
              AppGaps.ver.s16,
              Wrap(
                spacing: AppSizes.w.s12,
                runSpacing: AppSizes.h.s12,
                children: [
                  if (_period.isWeekly)
                    ...UIWeekDayEnum.days.mapIndexed((index, e) {
                      return AppChipsComponent.filter(
                        labelText: context.l10n.weekDay(e.key).capitalize(),
                        selected: _weekOfDay == e,
                        onSelected: (v) {
                          setState(() {
                            _weekOfDay = e;
                            _nextFrequency = e.key;
                          });
                        },
                      );
                    }),
                  if (_period.isMonthly)
                    ...List.generate(widget.monthlyLimit, (i) => i + 1).map((e) {
                      return AppChipsComponent.filter(
                        labelText: e.toString(),
                        selected: _dayOfMonth == e,
                        onSelected: (v) {
                          setState(() {
                            _dayOfMonth = e;
                            _nextFrequency = e.toString();
                          });
                        },
                      );
                    }),
                ],
              ),
            ],
          ],
        ),
      ),
      footer: [
        AppBottomFillingCtaButtonComponent.singlePrimaryFillingBottomCta(
          isEnabled: _nextFrequency.orNull != null,
          label: context.l10n.confirm,
          onPressed: () {
            widget.onSavedPressed(_nextFrequency);
          },
        ),
      ],
    );
  }
}
