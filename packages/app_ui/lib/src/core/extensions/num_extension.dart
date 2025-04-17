import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta.dart';

double _sizeScaleFactor = 1;
bool _shouldUseScreenUtil = true;
//10% pour REGIS
/// Sets the size scale factor for the app.
void setAppSizeScaleFactor({double value = 1, bool useScreenUtil = true}) {
  if (value < 0.1) {
    throw Exception('The size scale factor must be greater than 0.1');
  }
  if (value > 1.0) {
    throw Exception('The size scale factor must be less than 1');
  }
  _sizeScaleFactor = value;
  _shouldUseScreenUtil = useScreenUtil;
}

extension NumSizerX on num {
  @internal
  double toH() {
    if (!_shouldUseScreenUtil) return _applyScaleFactor;
    return _applyScaleFactor.h;
  }

  @internal
  double toW() {
    if (!_shouldUseScreenUtil) return _applyScaleFactor;
    return _applyScaleFactor.w;
  }

  @internal
  double toSp() {
    if (!_shouldUseScreenUtil) return _applyScaleFactor;
    return _applyScaleFactor.spMax;
  }

  @internal
  double toR() {
    if (!_shouldUseScreenUtil) return _applyScaleFactor;
    return _applyScaleFactor.r;
  }

  double get _applyScaleFactor {
    return this * _sizeScaleFactor;
  }
}
