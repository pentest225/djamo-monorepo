import 'package:app_ui/src/core/enums/enums.dart';
import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

mixin UIFrequencyFacingMixin {
  UIPeriodicityEnum getFrequencyPeriodicity(String initialFrequency) {
    if (initialFrequency == 'daily') {
      return UIPeriodicityEnum.daily;
    }
    if (int.tryParse(initialFrequency) != null) {
      return UIPeriodicityEnum.monthly;
    }
    return UIPeriodicityEnum.weekly;
  }

  String getFrequencyLabel(BuildContext context, {required String frequency}) {
    final maybeNum = num.tryParse(frequency);
    return switch (getFrequencyPeriodicity(frequency)) {
      UIPeriodicityEnum.daily => context.l10n.vaultDailyRecurrenceFrequency,
      UIPeriodicityEnum.weekly => context.l10n.vaultWeeklyRecurrenceFrequency(
          context.l10n.weekDay(frequency).capitalize(),
        ),
      _ when maybeNum != null => context.l10n.vaultMonthlyRecurrenceFrequency(
          maybeNum,
        ),
      _ => '-',
    };
  }
}
