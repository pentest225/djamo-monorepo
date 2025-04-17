enum StoreUnitStatus {
  /// The store unit is in an initial state.
  initial,

  /// The store unit is in a loading state.
  loading,

  /// The store unit is in a success state.
  success,

  /// The store unit is in an error state.
  err,
  ;

  bool get isInitial => this == StoreUnitStatus.initial;
  bool get isLoading => this == StoreUnitStatus.loading;
  bool get isSuccess => this == StoreUnitStatus.success;
  bool get isErr => this == StoreUnitStatus.err;
}
