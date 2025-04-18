import 'dart:async';

/// Interface for defining use cases in the application.
abstract interface class UseCaseContract<Result, Params> {
  /// Executes the use case with the given parameters.
  Future<Result> call(Params params);
}
