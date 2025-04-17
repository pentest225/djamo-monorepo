import 'package:meta/meta.dart';

@internal
double useSafeDivision(double dividend, double divisor) {
  if (divisor == 0) {
    return 0;
  }
  return dividend / divisor;
}
