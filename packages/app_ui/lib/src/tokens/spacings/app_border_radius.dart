import 'package:app_ui/src/src.dart';
import 'package:app_ui/src/tokens/spacings/_sizes.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final class BorderRadiusValue {
  @internal
  const BorderRadiusValue(this._value);

  final double _value;

  double get _reValue => AppSizes.r.custom(_value);

  BorderRadius get all => BorderRadius.circular(_reValue);

  //top
  BorderRadius get top => BorderRadius.vertical(
        top: Radius.circular(_reValue),
      );

  //bottom
  BorderRadius get bottom => BorderRadius.vertical(
        bottom: Radius.circular(_reValue),
      );

  //left
  BorderRadius get left => BorderRadius.horizontal(
        left: Radius.circular(_reValue),
      );

  //right
  BorderRadius get right => BorderRadius.horizontal(
        right: Radius.circular(_reValue),
      );

  //only
  BorderRadius only({
    bool top = false,
    bool bottom = false,
    bool left = false,
    bool right = false,
  }) {
    return BorderRadius.only(
      topLeft: top ? Radius.circular(_reValue) : Radius.zero,
      topRight: top ? Radius.circular(_reValue) : Radius.zero,
      bottomLeft: bottom ? Radius.circular(_reValue) : Radius.zero,
      bottomRight: bottom ? Radius.circular(_reValue) : Radius.zero,
    );
  }
}

abstract final class AppBorderRadius {
  static BorderRadiusValue custom(double value) => BorderRadiusValue(value);
  static const BorderRadiusValue s4 = BorderRadiusValue(Sizes.s4);
  static const BorderRadiusValue s8 = BorderRadiusValue(Sizes.s8);
  static const BorderRadiusValue s12 = BorderRadiusValue(Sizes.s12);
  static const BorderRadiusValue s16 = BorderRadiusValue(Sizes.s16);
  static const BorderRadiusValue s20 = BorderRadiusValue(Sizes.s20);
  static const BorderRadiusValue s24 = BorderRadiusValue(Sizes.s24);
  static const BorderRadiusValue s28 = BorderRadiusValue(Sizes.s28);
  static const BorderRadiusValue s32 = BorderRadiusValue(Sizes.s32);
  static const BorderRadiusValue s40 = BorderRadiusValue(Sizes.s40);
  static const BorderRadiusValue s48 = BorderRadiusValue(Sizes.s48);
  static const BorderRadiusValue s64 = BorderRadiusValue(Sizes.s64);
  static const BorderRadiusValue s80 = BorderRadiusValue(Sizes.s80);
  static const BorderRadiusValue s96 = BorderRadiusValue(Sizes.s96);
  static const BorderRadiusValue s128 = BorderRadiusValue(Sizes.s128);
  static const BorderRadiusValue s160 = BorderRadiusValue(Sizes.s160);
  static const BorderRadiusValue s192 = BorderRadiusValue(Sizes.s192);
}
