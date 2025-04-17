import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ProcessingResult<T> extends Equatable {
  @internal
  const ProcessingResult(this.ok, this.err);

  factory ProcessingResult.ok(T ok) => ProcessingResult(ok, null);
  factory ProcessingResult.err(String err) => ProcessingResult(null, err);
  factory ProcessingResult.none() => const ProcessingResult(null, null);

  final T? ok;
  final String? err;

  /// Unwrap the [ok] value.
  /// Throws an [Error] if the [ok] value is null.
  T get unwrap {
    if (ok == null) {
      throw Error();
    }
    return ok!;
  }

  bool get isOk => ok != null;
  bool get isErr => err != null;
  bool get isNone => !isOk && !isErr;

  void on({
    void Function(T ok)? ok,
    void Function(String err)? err,
    void Function()? none,
  }) {
    if (isOk) {
      ok?.call(this.ok as T);
    } else if (isErr) {
      err?.call(this.err!);
    } else {
      none?.call();
    }
  }

  ProcessingResult<R> map<R>(R Function(T ok) f) {
    if (isErr) {
      return ProcessingResult.err(err!);
    }
    if (isNone) {
      return ProcessingResult.none();
    }
    return ProcessingResult.ok(f(ok as T));
  }

  @override
  List<Object?> get props => [ok, err];
}
