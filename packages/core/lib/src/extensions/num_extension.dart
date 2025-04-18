extension CoreNumX on num? {
  bool isZero() => this == 0;

  num roundUpToNearestMultiple({
    int multiple = 1000,
    int level = 1,
    num Function()? tweakValue,
  }) {
    if (this == null) {
      return 0;
    } else {
      if (this! % multiple == 0) {
        return this! + (tweakValue != null ? tweakValue.call() : 0);
      } else {
        return (this! ~/ multiple + level) * multiple;
      }
    }
  }
}
