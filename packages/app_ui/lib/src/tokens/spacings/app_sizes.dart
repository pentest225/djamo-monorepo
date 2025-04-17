import 'package:app_ui/src/core/extensions/extensions.dart';
import 'package:app_ui/src/tokens/spacings/_sizes.dart';
import 'package:meta/meta.dart';

///
abstract final class AppSizes {
  /// A utility class for defining width sizes.
  static W get w => W();

  /// A utility class for defining height sizes.
  static H get h => H();

  /// A utility class for defining font sizes.
  static F get f => F();

  /// A utility class for defining radius sizes.
  static R get r => R();
}

mixin _ZeroMixin {
  double get zero => 0;
}

abstract interface class _Sizer {
  double custom(double value);
  double get s4;
  double get s6;
  double get s8;
  double get s10;
  double get s12;
  double get s18;
  double get s14;
  double get s16;
  double get s20;
  double get s24;
  double get s28;
  double get s32;
  double get s40;
  double get s48;
  double get s56;
  double get s64;
  double get s80;
  double get s96;
  double get s128;
  double get s160;
  double get s192;
}

@internal
final class H with _ZeroMixin implements _Sizer {
  factory H() {
    return _instance;
  }

  H._();

  static final H _instance = H._();

  @override
  double custom(double value) => value.toH();
  @override
  double get s4 => Sizes.s4.toH();
  @override
  double get s6 => Sizes.s6.toH();
  @override
  double get s8 => Sizes.s8.toH();
  @override
  double get s10 => Sizes.s10.toH();
  @override
  double get s12 => Sizes.s12.toH();
  @override
  double get s14 => Sizes.s14.toH();
  @override
  double get s16 => Sizes.s16.toH();
  @override
  double get s18 => Sizes.s18.toH();
  @override
  double get s20 => Sizes.s20.toH();
  @override
  double get s24 => Sizes.s24.toH();
  @override
  double get s28 => Sizes.s28.toH();
  @override
  double get s32 => Sizes.s32.toH();
  @override
  double get s40 => Sizes.s40.toH();
  @override
  double get s48 => Sizes.s48.toH();
  @override
  double get s56 => Sizes.s56.toH();
  @override
  double get s64 => Sizes.s64.toH();
  @override
  double get s80 => Sizes.s80.toH();
  @override
  double get s96 => Sizes.s96.toH();
  @override
  double get s128 => Sizes.s128.toH();
  @override
  double get s160 => Sizes.s160.toH();
  @override
  double get s192 => Sizes.s192.toH();
}

@internal
final class W with _ZeroMixin implements _Sizer {
  factory W() {
    return _instance;
  }

  W._();

  static final W _instance = W._();

  @override
  double custom(double value) => value.toW();
  @override
  double get s4 => Sizes.s4.toW();
  @override
  double get s6 => Sizes.s6.toW();
  @override
  double get s8 => Sizes.s8.toW();
  @override
  double get s10 => Sizes.s10.toW();
  @override
  double get s12 => Sizes.s12.toW();
  @override
  double get s14 => Sizes.s14.toW();
  @override
  double get s16 => Sizes.s16.toW();
  @override
  double get s18 => Sizes.s18.toW();
  @override
  double get s20 => Sizes.s20.toW();
  @override
  double get s24 => Sizes.s24.toW();
  @override
  double get s28 => Sizes.s28.toW();
  @override
  double get s32 => Sizes.s32.toW();
  @override
  double get s40 => Sizes.s40.toW();
  @override
  double get s48 => Sizes.s48.toW();
  @override
  double get s56 => Sizes.s56.toW();
  @override
  double get s64 => Sizes.s64.toW();
  @override
  double get s80 => Sizes.s80.toW();
  @override
  double get s96 => Sizes.s96.toW();
  @override
  double get s128 => Sizes.s128.toW();
  @override
  double get s160 => Sizes.s160.toW();
  @override
  double get s192 => Sizes.s192.toW();
}

/// A utility class for defining font sizes.
@internal
final class F with _ZeroMixin implements _Sizer {
  factory F() {
    return _instance;
  }

  F._();

  static final F _instance = F._();

  @override
  double custom(double value) => value.toSp();
  @override
  double get s4 => Sizes.s4.toSp();
  @override
  double get s6 => Sizes.s6.toSp();
  @override
  double get s8 => Sizes.s8.toSp();
  @override
  double get s10 => Sizes.s10.toSp();
  @override
  double get s12 => Sizes.s12.toSp();
  @override
  double get s14 => Sizes.s14.toSp();
  @override
  double get s16 => Sizes.s16.toSp();
  @override
  double get s18 => Sizes.s18.toSp();
  @override
  double get s20 => Sizes.s20.toSp();
  @override
  double get s24 => Sizes.s24.toSp();
  @override
  double get s28 => Sizes.s28.toSp();
  @override
  double get s32 => Sizes.s32.toSp();
  @override
  double get s40 => Sizes.s40.toSp();
  @override
  double get s48 => Sizes.s48.toSp();
  @override
  double get s56 => Sizes.s56.toSp();
  @override
  double get s64 => Sizes.s64.toSp();
  @override
  double get s80 => Sizes.s80.toSp();
  @override
  double get s96 => Sizes.s96.toSp();
  @override
  double get s128 => Sizes.s128.toSp();
  @override
  double get s160 => Sizes.s160.toSp();
  @override
  double get s192 => Sizes.s192.toSp();
}

/// A utility class for defining radius sizes.
@internal
final class R with _ZeroMixin implements _Sizer {
  factory R() {
    return _instance;
  }

  R._();

  static final R _instance = R._();

  @override
  double custom(double value) => value.toR();
  @override
  double get s4 => Sizes.s4.toR();
  @override
  double get s6 => Sizes.s6.toR();
  @override
  double get s8 => Sizes.s8.toR();
  @override
  double get s10 => Sizes.s10.toR();
  @override
  double get s12 => Sizes.s12.toR();
  @override
  double get s14 => Sizes.s14.toR();
  @override
  double get s16 => Sizes.s16.toR();
  @override
  double get s18 => Sizes.s18.toR();
  @override
  double get s20 => Sizes.s20.toR();
  @override
  double get s24 => Sizes.s24.toR();
  @override
  double get s28 => Sizes.s28.toR();
  @override
  double get s32 => Sizes.s32.toR();
  @override
  double get s40 => Sizes.s40.toR();
  @override
  double get s48 => Sizes.s48.toR();
  @override
  double get s56 => Sizes.s56.toR();
  @override
  double get s64 => Sizes.s64.toR();
  @override
  double get s80 => Sizes.s80.toR();
  @override
  double get s96 => Sizes.s96.toR();
  @override
  double get s128 => Sizes.s128.toR();
  @override
  double get s160 => Sizes.s160.toR();
  @override
  double get s192 => Sizes.s192.toR();
}
