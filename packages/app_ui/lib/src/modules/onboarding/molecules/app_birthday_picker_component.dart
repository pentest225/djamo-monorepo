import 'dart:async';

import 'package:app_ui/src/core/l10n/l10n.dart';
import 'package:app_ui/src/modules/common/atoms/atoms.dart' show AppDropdownDecoration, AppDropdownFieldWidget;
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:dart_date/dart_date.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


enum _Type {
  day,
  month,
  year,
}

class AppBirthdayPickerComponent extends StatefulWidget {
  const AppBirthdayPickerComponent({
    super.key,
    this.initialDateTime,
    this.minimumDate,
    this.maximumDate,
    this.decoration = const AppDropdownDecoration(),
    this.onBirthdayChanged,
    this.withoutFields = true,
    this.shouldSetDefaultInitialDate = false,
  });
  final DateTime? initialDateTime;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final void Function(DateTime?)? onBirthdayChanged;
  final AppDropdownDecoration decoration;
  final bool withoutFields;
  final bool shouldSetDefaultInitialDate;

  @override
  State<AppBirthdayPickerComponent> createState() => _AppBirthdayPickerComponentState();
}

class _AppBirthdayPickerComponentState extends State<AppBirthdayPickerComponent> {
  static final DateTime _defaultMinimumBirthYear = DateTime.now().subYears(100);
  static final int _defaultMinimumBirthYearInterval = DateTime.now().year - 100;

  late Map<_Type, GlobalKey> _valueNodes;

  Timer? _tryRequestNextFocusDebounce;

  int userMinimumAge = 18;
  DateTime? birthday;
  int selectedDay = DateTime.now().day;
  int selectedYear = DateTime.now().year - 18;
  DateTime selectedMonth = DateTime.now();
  List<int> daysOfSelectedMonth = const [];
  List<int> birthdayYears = const [];
  List<int> monthPerYear = const [];
  bool dayFieldHasFocused = false;
  bool isLoading = true;
  bool monthFieldHasFocused = false;
  bool yearFieldHasFocused = false;
  Map<_Type, int?> _values = {
    _Type.day: null,
    _Type.month: null,
    _Type.year: null,
  };

  void _tryRequestNextFocus(_Type? previousType) {
    _tryRequestNextFocusDebounce?.cancel();
    _tryRequestNextFocusDebounce = Timer(const Duration(milliseconds: 160), () async {
      final nextNull = _values.entries.firstOrNullWhere((e) {
        return e.value == null;
      });
      if (nextNull == null) return;
      await HapticFeedback.lightImpact().catchError((_) {});
      final nextType = nextNull.key;
      _valueNodes[nextType]?.currentContext?.visitChildElements(
        (element) {
          if (element.widget is Semantics) {
            element.visitChildElements(
              (element) {
                if (element.widget is Actions) {
                  element.visitChildElements(
                    (element) {
                      Actions.invoke(element, const ActivateIntent());
                    },
                  );
                }
              },
            );
          }
        },
      );
    });
  }

  void _onInitialized() {
    final birthdayYearsLength = getBirthYearsInterval;
    final firstBirthdayYears = getFirstBirthdayYear;
    final generatedBirthdayYears = List.generate(
      birthdayYearsLength,
      (index) => firstBirthdayYears + index,
    );
    final generateMonthPerYear = List.generate(
      DateTime.monthsPerYear,
      (index) => index + 1,
    );
    final initialDateTime = getDefaultInitial;
    if (initialDateTime == null) return;
    setState(() {
      if (widget.shouldSetDefaultInitialDate) {
        selectedDay = initialDateTime.day;
        selectedYear = initialDateTime.year;
        selectedMonth = DateTime(0, initialDateTime.month);
        _values = {
          _Type.day: selectedDay,
          _Type.month: selectedMonth.month,
          _Type.year: selectedYear,
        };
      }
      birthday = initialDateTime;
      birthdayYears = generatedBirthdayYears;
      monthPerYear = generateMonthPerYear;
      isLoading = false;
      daysOfSelectedMonth = List.generate(initialDateTime.daysInMonth, (index) => index + 1);
    });

    updateCallBack();
  }

  void updateCallBack() {
    if (birthday == null) {
      return;
    }
    final isAllValuesSet = _values.values.every((element) => element != null);
    if (!isAllValuesSet) {
      return;
    }
    widget.onBirthdayChanged?.call(DateTime(birthday!.year, birthday!.month, birthday!.day));
  }

  void _onDayChanged(int? day) {
    final getSelectedDay = day != null && day > 0 && day <= birthday!.daysInMonth ? day : 1;
    final newDate = DateTime(
      selectedYear,
      selectedMonth.month,
      getSelectedDay,
    );
    setState(() {
      birthday = newDate;
      selectedDay = newDate.day;
      _values[_Type.day] = day;
    });
    _tryRequestNextFocus(_Type.day);
    updateCallBack();
  }

  void _onMonthChanged(int? month) {
    final selectedMonthInt = month != null && month > 0 && month <= DateTime.monthsPerYear ? month : 1;
    final selectedMonthInitialDateTime = DateTime(
      selectedYear,
      selectedMonthInt,
    );
    final selectedMonthIsDays = List<int>.generate(
      selectedMonthInitialDateTime.daysInMonth,
      (index) => index + 1,
    );
    final oldSelectedDayIsAlwaysValid = selectedMonthInitialDateTime.daysInMonth >= selectedDay;

    final newDate = DateTime(
      selectedYear,
      month!,
      oldSelectedDayIsAlwaysValid ? selectedDay : 1,
    );
    setState(() {
      birthday = newDate;
      selectedDay = newDate.day;
      selectedMonth = newDate;
      daysOfSelectedMonth = selectedMonthIsDays;
      _values[_Type.month] = month;
    });
    _tryRequestNextFocus(_Type.month);
    updateCallBack();
  }

  void _onYearChanged(int? year) {
    final getSelectedYear = year != null && year > 0 ? year : 1;

    final selectedMonthInitialDateTime = DateTime(
      getSelectedYear,
      selectedMonth.month,
    );
    final selectedMonthIsDays = List<int>.generate(
      selectedMonthInitialDateTime.daysInMonth,
      (index) => index + 1,
    );
    final oldSelectedDayIsAlwaysValid = selectedDay <= selectedMonthInitialDateTime.daysInMonth;

    final newDate = DateTime(
      year!,
      selectedMonth.month,
      oldSelectedDayIsAlwaysValid ? selectedDay : 1,
    );
    setState(() {
      birthday = newDate;
      selectedDay = newDate.day;
      selectedYear = newDate.year;
      daysOfSelectedMonth = selectedMonthIsDays;
      _values[_Type.year] = year;
    });
    _tryRequestNextFocus(_Type.year);
    updateCallBack();
  }

  void _onMonthFieldFocused(bool focusState) {
    setState(() {
      monthFieldHasFocused = focusState;
    });
  }

  void _onDayFieldFocused(bool focusState) {
    setState(() {
      dayFieldHasFocused = focusState;
    });
  }

  void _onYearFieldFocused(bool focusState) {
    setState(() {
      yearFieldHasFocused = focusState;
    });
  }

  @override
  void initState() {
    _valueNodes = {
      _Type.day: GlobalKey(debugLabel: 'day_picker'),
      _Type.month: GlobalKey(debugLabel: 'month_picker'),
      _Type.year: GlobalKey(debugLabel: 'year_picker'),
    };
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _onInitialized();
      },
    );
  }

  @override
  void dispose() {
    _tryRequestNextFocusDebounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        _tryRequestNextFocusDebounce?.cancel();
      },
      child: Row(
        children: [
          Expanded(
            key: ValueKey('Day_${_values[_Type.day]}${_values[_Type.year]}'),
            child: Semantics(
              label: 'BIRTHDAY_DAY_PICKER',
              child: AppDropdownFieldWidget<int>(
                key: const ValueKey('day_and_year_drop_down_btn_widget_day_picker'),
                buttonKey: _valueNodes[_Type.day],
                onItemChanged: _onDayChanged,
                items: daysOfSelectedMonth,
                value: _values[_Type.day],
                hasFocused: dayFieldHasFocused,
                onMenuStateChange: _onDayFieldFocused,
                decoration: widget.decoration,
                label: context.l10n.onboardingBirthdayDayField,
                itemValueFormatter: (int? value) {
                  return value?.toString() ?? '';
                },
              ),
            ),
          ),
          AppGaps.hor.s8,
          Expanded(
            key: ValueKey('Month_${_values[_Type.month]}'),
            child: Semantics(
              label: 'BIRTHDAY_MONTH_PICKER',
              child: AppDropdownFieldWidget<int>(
                key: const ValueKey('month_drop_down_btn_widget'),
                buttonKey: _valueNodes[_Type.month],
                onItemChanged: _onMonthChanged,
                value: _values[_Type.month],
                label: context.l10n.onboardingBirthdayMonthField,
                onMenuStateChange: _onMonthFieldFocused,
                items: monthPerYear,
                hasFocused: monthFieldHasFocused,
                decoration: widget.decoration,
                itemValueFormatter: (int? value) {
                  return DateFormat('MMMM', 'fr_FR').format(valueToDateTime(value)).capitalize();
                },
              ),
            ),
          ),
          AppGaps.hor.s8,
          Expanded(
            key: ValueKey('Year_${_values[_Type.year]}'),
            child: Semantics(
              label: 'BIRTHDAY_YEAR_PICKER',
              child: AppDropdownFieldWidget<int>(
                key: const ValueKey('day_and_year_drop_down_btn_widget_year_picker'),
                buttonKey: _valueNodes[_Type.year],
                onItemChanged: _onYearChanged,
                hasFocused: yearFieldHasFocused,
                onMenuStateChange: _onYearFieldFocused,
                items: birthdayYears,
                value: _values[_Type.year],
                decoration: widget.decoration,
                label: context.l10n.onboardingBirthdayYearField,
                itemValueFormatter: (int? value) {
                  return value?.toString() ?? '';
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  int get getFirstBirthdayYear {
    if (getMinimumDate != null && getMaximumDate != null) {
      final difference = getMaximumDate!.year - getMinimumDate!.year;
      if (difference.isNegative) {
        return _defaultMinimumBirthYearInterval;
      }
      return getMinimumDate!.year;
    }
    if (getMinimumDate != null) {
      return getMinimumDate!.year;
    } else {
      return _defaultMinimumBirthYearInterval;
    }
  }

  int get getBirthYearsInterval {
    if (getMinimumDate != null && getMaximumDate != null) {
      final difference = getMaximumDate!.year - getMinimumDate!.year;
      if (difference.isNegative) {
        return defaultMinimumBirthYearInterval;
      }
      return difference;
    } else if (getMinimumDate != null) {
      return defaultMinimumBirthYearInterval;
    } else if (getMaximumDate != null) {
      if (getMaximumDate!.year > _defaultMinimumBirthYear.year) {
        return getMaximumDate!.year - _defaultMinimumBirthYear.year;
      }
      return defaultMinimumBirthYearInterval;
    }
    return defaultMinimumBirthYearInterval;
  }

  int get defaultMinimumBirthYearInterval {
    return DateTime.now().year - (_defaultMinimumBirthYear.year - 1);
  }

  DateTime? get getDefaultInitial {
    if (getMinimumDate != null && getMaximumDate != null) {
      if (widget.initialDateTime != null && widget.initialDateTime!.year >= getMinimumDate!.year && widget.maximumDate!.year <= widget.maximumDate!.year) {
        return widget.initialDateTime;
      } else if ((getMaximumDate!.year - getMinimumDate!.year).isNegative) {
        return DateTime.now().subYears(userMinimumAge);
      }
      return getMinimumDate;
    }

    if (getMinimumDate != null) {
      if (widget.initialDateTime != null && widget.initialDateTime!.year >= getMinimumDate!.year) {
        return widget.initialDateTime;
      } else if (_defaultMinimumBirthYear.year >= getMinimumDate!.year) {
        return getMinimumDate;
      }
      return DateTime(getFirstBirthdayYear);
    } else if (getMaximumDate != null) {
      if (widget.initialDateTime != null && widget.maximumDate!.year <= widget.maximumDate!.year) {
        return widget.initialDateTime;
      }
      final max = getMaximumDate!.subYears(userMinimumAge);
      if (max.year > _defaultMinimumBirthYear.year) {
        return max;
      }
      return DateTime(getFirstBirthdayYear);
    } else if (widget.initialDateTime != null) {
      return widget.initialDateTime;
    }
    return _defaultMinimumBirthYear.addYears(100 - userMinimumAge);
  }

  DateTime? get getMinimumDate => widget.minimumDate;

  DateTime? get getMaximumDate => widget.maximumDate;

  DateTime valueToDateTime(int? value) {
    final dateTime = DateTime(
      0,
      value ?? 1,
    );
    return dateTime;
  }
}
