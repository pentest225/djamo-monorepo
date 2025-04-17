import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<DateTime?> useShowCupertinoDatePicker(
  BuildContext context, {
  DateTime? initialDateTime,
  DateTime? minDateTime,
  DateTime? maxDateTime,
  void Function(DateTime)? onSelected,
}) {
  var selectedDate = initialDateTime ?? DateTime.now();
  return showCupertinoModalPopup<DateTime?>(
    context: context,
    useRootNavigator: false,
    builder: (_) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: AppBorderRadius.s24.top,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: AppPaddings.s16.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: context.colorScheme.onSurface,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Fermer'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      onSelected?.call(selectedDate);
                    },
                    child: const Text(
                      'Choisir',
                    ),
                  ),
                ],
              ),
            ),
            AspectRatio(
              aspectRatio: 4 / 3,
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: context.theme.textTheme.titleLarge,
                  ),
                ),
                child: CupertinoDatePicker(
                  initialDateTime: initialDateTime,
                  minimumDate: minDateTime,
                  maximumDate: maxDateTime,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime value) {
                    selectedDate = value;
                  },
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
