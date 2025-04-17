import 'package:flutter/material.dart';

typedef HideBottomSheetCallback<T extends Object?> = Future<bool> Function([T? result]);
typedef ModalBottomSheetContextCallback<R, T extends Object?> = R Function(BuildContext, HideBottomSheetCallback<T> hide);
