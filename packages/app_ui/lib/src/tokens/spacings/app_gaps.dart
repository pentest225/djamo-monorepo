import 'package:app_ui/src/tokens/spacings/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

///
abstract final class AppGaps {
  /// A utility class for defining horizontal gaps.
  static H get hor => H();

  /// A utility class for defining vertical gaps.
  static V get ver => V();
}

abstract interface class _Gaps {
  Gap custom(double value);

  Gap get s4;
  Gap get s8;
  Gap get s10;
  Gap get s12;
  Gap get s16;
  Gap get s20;
  Gap get s24;
  Gap get s28;
  Gap get s32;
  Gap get s40;
  Gap get s48;
  Gap get s56;
  Gap get s64;
  Gap get s80;
  Gap get s96;
  Gap get s128;
  Gap get s160;
  Gap get s192;
}

final class H implements _Gaps {
  factory H() {
    return _instance;
  }

  H._();

  static final H _instance = H._();

  @override
  Gap custom(double value) => Gap(AppSizes.w.custom(value));

  @override
  Gap get s4 => Gap(AppSizes.w.s4);
  @override
  Gap get s8 => Gap(AppSizes.w.s8);
  @override
  Gap get s10 => Gap(AppSizes.w.s10);
  @override
  Gap get s12 => Gap(AppSizes.w.s12);
  @override
  Gap get s16 => Gap(AppSizes.w.s16);
  @override
  Gap get s20 => Gap(AppSizes.w.s20);
  @override
  Gap get s24 => Gap(AppSizes.w.s24);
  @override
  Gap get s28 => Gap(AppSizes.w.s28);
  @override
  Gap get s32 => Gap(AppSizes.w.s32);
  @override
  Gap get s40 => Gap(AppSizes.w.s40);
  @override
  Gap get s48 => Gap(AppSizes.w.s48);
  @override
  Gap get s56 => Gap(AppSizes.w.s56);
  @override
  Gap get s64 => Gap(AppSizes.w.s64);
  @override
  Gap get s80 => Gap(AppSizes.w.s80);
  @override
  Gap get s96 => Gap(AppSizes.w.s96);
  @override
  Gap get s128 => Gap(AppSizes.w.s128);
  @override
  Gap get s160 => Gap(AppSizes.w.s160);
  @override
  Gap get s192 => Gap(AppSizes.w.s192);
}

final class V implements _Gaps {
  factory V() {
    return _instance;
  }

  V._();

  static final V _instance = V._();

  @override
  Gap custom(double value) => Gap(AppSizes.h.custom(value));

  @override
  Gap get s4 => Gap(AppSizes.h.s4);
  @override
  Gap get s8 => Gap(AppSizes.h.s8);
  @override
  Gap get s10 => Gap(AppSizes.h.s10);
  @override
  Gap get s12 => Gap(AppSizes.h.s12);
  @override
  Gap get s16 => Gap(AppSizes.h.s16);
  @override
  Gap get s20 => Gap(AppSizes.h.s20);
  @override
  Gap get s24 => Gap(AppSizes.h.s24);
  @override
  Gap get s28 => Gap(AppSizes.h.s28);
  @override
  Gap get s32 => Gap(AppSizes.h.s32);
  @override
  Gap get s40 => Gap(AppSizes.h.s40);
  @override
  Gap get s48 => Gap(AppSizes.h.s48);
  @override
  Gap get s56 => Gap(AppSizes.h.s56);
  @override
  Gap get s64 => Gap(AppSizes.h.s64);
  @override
  Gap get s80 => Gap(AppSizes.h.s80);
  @override
  Gap get s96 => Gap(AppSizes.h.s96);
  @override
  Gap get s128 => Gap(AppSizes.h.s128);
  @override
  Gap get s160 => Gap(AppSizes.h.s160);
  @override
  Gap get s192 => Gap(AppSizes.h.s192);
}

extension GapX on Gap {
  SliverToBoxAdapter asSliver() {
    return SliverToBoxAdapter(child: this);
  }
}
