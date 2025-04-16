import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// App colors
@internal
abstract final class AppColors {
  /// Primary color palette
  static final ColorPalette primary = _Primary();

  /// Business primary color palette

  static final ColorPalette businessPrimary = _BusinessPrimary();

  /// Success color palette
  static final ColorPalette secondary = _Secondary();

  /// Warning color palette
  static final ColorPalette tertiary = _Tertiary();

  /// Error color palette
  static final ColorPalette error = _Error();

  /// Neutral color palette
  static final ColorPalette neutral = _Neutral();

  /// Neutral variant color palette
  static final ColorPalette neutralVariant = _NeutralVariant();
}

abstract interface class ColorPalette {
  Color get p0;
  Color get p10;
  Color get p20;
  Color get p30;
  Color get p40;
  Color get p50;
  Color get p60;
  Color get p70;
  Color get p80;
  Color get p90;
  Color get p95;
  Color get p99;
  Color get p100;
}

final class _Primary implements ColorPalette {
  factory _Primary() {
    return instance;
  }
  _Primary._();
  static _Primary instance = _Primary._();

  @override
  Color get p0 => const Color(0xFF000000);
  @override
  Color get p10 => const Color(0xFF000866);
  @override
  Color get p20 => const Color(0xFF0012A0);
  @override
  Color get p30 => const Color(0xFF0018BF);
  @override
  Color get p40 => const Color(0xFF2A3FFF);
  @override
  Color get p50 => const Color(0xFF5465FF);
  @override
  Color get p60 => const Color(0xFF7885FF);
  @override
  Color get p70 => const Color(0xFF9BA5FF);
  @override
  Color get p80 => const Color(0xFFBDC2FF);
  @override
  Color get p90 => const Color(0xFFDFE0FF);
  @override
  Color get p95 => const Color(0xFFEFEFFF);
  @override
  Color get p99 => const Color(0xFFF7F7FF);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}

final class _Secondary implements ColorPalette {
  factory _Secondary() {
    return instance;
  }
  _Secondary._();
  static _Secondary instance = _Secondary._();

  @override
  Color get p0 => const Color(0xFF000000);
  @override
  Color get p10 => const Color(0xFF002111);
  @override
  Color get p20 => const Color(0xFF003921);
  @override
  Color get p30 => const Color(0xFF005232);
  @override
  Color get p40 => const Color(0xFF006D44);
  @override
  Color get p50 => const Color(0xFF008857);
  @override
  Color get p60 => const Color(0xFF12A56B);
  @override
  Color get p70 => const Color(0xFF49CC86);
  @override
  Color get p80 => const Color(0xFF99F0B6);
  @override
  Color get p90 => const Color(0xFFAFFAC5);
  @override
  Color get p95 => const Color(0xFFE1FAE9);
  @override
  Color get p99 => const Color(0xFFF0FFF4);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}

final class _Tertiary implements ColorPalette {
  factory _Tertiary() {
    return instance;
  }
  _Tertiary._();
  static _Tertiary instance = _Tertiary._();

  @override
  Color get p0 => const Color(0xFF000000);
  @override
  Color get p10 => const Color(0xFF261900);
  @override
  Color get p20 => const Color(0xFF412D00);
  @override
  Color get p30 => const Color(0xFF5D4200);
  @override
  Color get p40 => const Color(0xFF7A5900);
  @override
  Color get p50 => const Color(0xFF9A7000);
  @override
  Color get p60 => const Color(0xFFBA8800);
  @override
  Color get p70 => const Color(0xFFDCA100);
  @override
  Color get p80 => const Color(0xFFFCBC1F);
  @override
  Color get p90 => const Color(0xFFFFDEA3);
  @override
  Color get p95 => const Color(0xFFFFEFD6);
  @override
  Color get p99 => const Color(0xFFFFFBFF);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}

final class _Error implements ColorPalette {
  factory _Error() {
    return instance;
  }
  _Error._();
  static _Error instance = _Error._();

  @override
  Color get p0 => const Color(0xFF000000);
  @override
  Color get p10 => const Color(0xFF410E0B);
  @override
  Color get p20 => const Color(0xFF601410);
  @override
  Color get p30 => const Color(0xFF8C1D18);
  @override
  Color get p40 => const Color(0xFFB3261E);
  @override
  Color get p50 => const Color(0xFFDC362E);
  @override
  Color get p60 => const Color(0xFFE46962);
  @override
  Color get p70 => const Color(0xFFEC928E);
  @override
  Color get p80 => const Color(0xFFF2B8B5);
  @override
  Color get p90 => const Color(0xFFF9DEDC);
  @override
  Color get p95 => const Color(0xFFFCEEEE);
  @override
  Color get p99 => const Color(0xFFFFFBF9);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}

final class _Neutral implements ColorPalette {
  factory _Neutral() {
    return instance;
  }
  _Neutral._();
  static _Neutral instance = _Neutral._();

  @override
  Color get p0 => const Color(0xFF000000);
  @override
  Color get p10 => const Color(0xFF1B1B20);
  @override
  Color get p20 => const Color(0xFF2F2F33);
  @override
  Color get p30 => const Color(0xFF46464C);
  @override
  Color get p40 => const Color(0xFF5D5D64);
  @override
  Color get p50 => const Color(0xFF76767D);
  @override
  Color get p60 => const Color(0xFF8F8F96);
  @override
  Color get p70 => const Color(0xFFAEA9B1);
  @override
  Color get p80 => const Color(0xFFCAC5CD);
  @override
  Color get p90 => const Color(0xFFE0E0E9);
  @override
  Color get p95 => const Color(0xFFEFEFF7);
  @override
  Color get p99 => const Color(0xFFFAFAFF);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}

final class _NeutralVariant implements ColorPalette {
  factory _NeutralVariant() {
    return instance;
  }
  _NeutralVariant._();
  static _NeutralVariant instance = _NeutralVariant._();

  @override
  Color get p0 => const Color(0xFF000000);
  @override
  Color get p10 => const Color(0xFF1D1A22);
  @override
  Color get p20 => const Color(0xFF322F37);
  @override
  Color get p30 => const Color(0xFF49454F);
  @override
  Color get p40 => const Color(0xFF605D66);
  @override
  Color get p50 => const Color(0xFF79747E);
  @override
  Color get p60 => const Color(0xFF938F99);
  @override
  Color get p70 => const Color(0xFFAEA9B4);
  @override
  Color get p80 => const Color(0xFFC5C5CD);
  @override
  Color get p90 => const Color(0xFFE0E0E9);
  @override
  Color get p95 => const Color(0xFFEFEFF7);
  @override
  Color get p99 => const Color(0xFFFAFAFF);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}

final class _BusinessPrimary implements ColorPalette {
  factory _BusinessPrimary() {
    return instance;
  }
  _BusinessPrimary._();
  static _BusinessPrimary instance = _BusinessPrimary._();

  @override
  Color get p0 => const Color(0xFF11121D);
  @override
  Color get p10 => const Color(0xFF242636);
  @override
  Color get p20 => const Color(0xFF343645);
  @override
  Color get p30 => const Color(0xFF434457);
  @override
  Color get p40 => const Color(0xFF54556B);
  @override
  Color get p50 => const Color(0xFF656680);
  @override
  Color get p60 => const Color(0xFF787B96);
  @override
  Color get p70 => const Color(0xFF9498B5);
  @override
  Color get p80 => const Color(0xFFB8BBD4);
  @override
  Color get p90 => const Color(0xFFDCDFF5);
  @override
  Color get p95 => const Color(0xFFE6E8F7);
  @override
  Color get p99 => const Color(0xFFF2F4FF);
  @override
  Color get p100 => const Color(0xFFFFFFFF);
}
