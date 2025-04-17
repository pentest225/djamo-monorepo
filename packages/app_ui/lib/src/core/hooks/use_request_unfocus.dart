import 'dart:developer';

import 'package:flutter/material.dart';

void useRequestUnFocus() {
  try {
    FocusManager.instance.primaryFocus?.unfocus();
  } catch (e) {
    log(e.toString());
  }
}
