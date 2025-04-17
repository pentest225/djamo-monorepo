import 'package:app_ui/src/tokens/spacings/_sizes.dart';
import 'package:app_ui/src/tokens/spacings/app_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// A class that represents a padding value.
/// It provides various methods to get EdgeInsets with the padding value applied in different ways.
@internal
class PaddingValue {
  /// Constructor for PaddingValue.
  /// [_value] - The value of the padding.
  const PaddingValue(this._value);
  final double _value;

  /// Returns EdgeInsets with the padding value applied to all sides.
  EdgeInsets get all => EdgeInsets.only(
        left: AppSizes.w.custom(_value),
        top: AppSizes.h.custom(_value),
        right: AppSizes.w.custom(_value),
        bottom: AppSizes.w.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied symmetrically.
  EdgeInsets get symmetric => EdgeInsets.symmetric(
        horizontal: AppSizes.w.custom(_value),
        vertical: AppSizes.h.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied horizontally.
  EdgeInsets get horizontal => EdgeInsets.symmetric(
        horizontal: AppSizes.w.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied vertically.
  EdgeInsets get vertical => EdgeInsets.symmetric(
        vertical: AppSizes.h.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied to the top.
  EdgeInsets get top => EdgeInsets.only(
        top: AppSizes.h.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied to the bottom.
  EdgeInsets get bottom => EdgeInsets.only(
        bottom: AppSizes.h.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied to the left.
  EdgeInsets get left => EdgeInsets.only(
        left: AppSizes.w.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied to the right.
  EdgeInsets get right => EdgeInsets.only(
        right: AppSizes.w.custom(_value),
      );

  /// Returns EdgeInsets with the padding value applied to the specified sides.
  EdgeInsets only({
    bool left = false,
    bool top = false,
    bool right = false,
    bool bottom = false,
  }) {
    return EdgeInsets.only(
      left: left ? AppSizes.w.custom(_value) : 0,
      top: top ? AppSizes.h.custom(_value) : 0,
      right: right ? AppSizes.w.custom(_value) : 0,
      bottom: bottom ? AppSizes.h.custom(_value) : 0,
    );
  }
}

/// A class that provides predefined padding values.
abstract final class AppPaddings {
  static PaddingValue custom(double value) => PaddingValue(value);
  static const PaddingValue zero = PaddingValue(Sizes.zero);
  static const PaddingValue s4 = PaddingValue(Sizes.s4);
  static const PaddingValue s8 = PaddingValue(Sizes.s8);
  static const PaddingValue s10 = PaddingValue(Sizes.s10);
  static const PaddingValue s12 = PaddingValue(Sizes.s12);
  static const PaddingValue s14 = PaddingValue(Sizes.s14);
  static const PaddingValue s16 = PaddingValue(Sizes.s16);
  static const PaddingValue s20 = PaddingValue(Sizes.s20);
  static const PaddingValue s24 = PaddingValue(Sizes.s24);
  static const PaddingValue s28 = PaddingValue(Sizes.s28);
  static const PaddingValue s32 = PaddingValue(Sizes.s32);
  static const PaddingValue s40 = PaddingValue(Sizes.s40);
  static const PaddingValue s48 = PaddingValue(Sizes.s48);
  static const PaddingValue s64 = PaddingValue(Sizes.s64);
  static const PaddingValue s80 = PaddingValue(Sizes.s80);
  static const PaddingValue s96 = PaddingValue(Sizes.s96);
  static const PaddingValue s128 = PaddingValue(Sizes.s128);
  static const PaddingValue s160 = PaddingValue(Sizes.s160);
  static const PaddingValue s192 = PaddingValue(Sizes.s192);
}
