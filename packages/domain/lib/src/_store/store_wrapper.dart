import 'package:domain/src/_core/helpers/entity_sx.dart';
import 'package:domain/src/_store/store_unit_snapshot.dart';
import 'package:domain/src/_store/store_unit_status.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

typedef StoreSinkCallback<T> = void Function(T data);

abstract class StoreWrapper {
  const StoreWrapper({
    required this.identifier,
  });

  final String identifier;
  //
  T value<T>();

  Stream<T> stream<T>([bool Function(T, T)? distinct]);

  Stream<RefreshArgs> request<T, RefreshArgs>();

  Stream<StoreUnitStatus> status<T>();
  //
  void sink<T>(T data);

  void requestRefresh<T, RefreshArgs>(RefreshArgs args);

  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args);

  /// Prefer using the `onSXChanged` method instead of this method.
  @internal
  void toLoading<T>();

  /// Prefer using the `onSXChanged` method instead of this method.
  @internal
  void toSuccess<T>([T? value]);

  /// Prefer using the `onSXChanged` method instead of this method.
  @internal
  void toErr<T>();

  void dispose();

  Exception nonSupportedTypeInStoreWrapper<T>(String wrapperName, String method) {
    return Exception('❌ | Type $T is not supported in $wrapperName.$method');
  }

  /// Handles changes in the state of a `DomainSx` object and updates the store accordingly.
  ///
  /// This method listens to changes in the `DomainSx` object and updates the store's state
  /// based on the status of the `DomainSx`. It uses the provided `resolve` function to
  /// convert the `SXValueType` to the `StoreUnitType` and then updates the store's state
  /// using the appropriate methods (`toLoading`, `toSuccess`, `toErr`).
  ///
  /// - `sx`: The `DomainSx` object whose state changes are being listened to.
  /// - `resolve`: A function that converts the `SXValueType` to the `StoreUnitType`.
  void onSXChanged<StoreUnitValueType, SXValueType>(
    DomainSx<SXValueType> sx, {
    required StoreUnitValueType Function(SXValueType) resolveValue,
  }) {
    final value = resolveValue(sx.value);
    sink(value);
    switch (sx.status) {
      case SxStatus.initial:
        return;
      case SxStatus.loading:
      case SxStatus.refresh:
        try {
          toLoading<StoreUnitValueType>();
        } catch (_, __) {}
        return;
      case SxStatus.success:
        try {
          toSuccess<StoreUnitValueType>(value);
        } catch (_, __) {}
        return;
      case SxStatus.failed:
        try {
          toErr<StoreUnitValueType>();
        } catch (_, __) {}
        return;
    }
  }

  void onValueChange<StoreUnitValueType>(StoreUnitValueType value) {
    sink(value);
  }

  Stream<StoreUnitSnapshot<T>> snapshotStream<T>() {
    final initial = (value: value<T>(), status: StoreUnitStatus.initial);
    return _useBuildStoreUnitSnapshotStream<T>(this, initialValue: initial);
  }
}

Stream<StoreUnitSnapshot<T>> _useBuildStoreUnitSnapshotStream<T>(
  StoreWrapper s, {
  required StoreUnitSnapshot<T> initialValue,
  bool Function(T, T)? buildWhen,
}) {
  return Rx.combineLatest2(
    s.stream<T>(buildWhen).startWith(initialValue.value),
    s.status<T>().startWith(initialValue.status),
    (a, b) {
      return (
        value: a,
        status: b,
      );
    },
  ).skip(1);
}
