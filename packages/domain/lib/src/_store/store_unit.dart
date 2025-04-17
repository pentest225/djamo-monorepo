import 'dart:async';

import 'package:domain/src/_store/store_unit_status.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

typedef StoreUnitSuccessCallback<T> = void Function(T? data);
typedef StoreUnitRequestAsyncCallback<T> = Future<T?> Function();

@internal
@immutable

/// A store unit that holds a single value of type [T].
/// [RefreshArgs] is the type of the arguments that are passed to the store when it is requested to refresh its value.
class StoreUnit<T, RefreshArgs> extends Equatable {
  /// Creates a new store with the given [subject].
  const StoreUnit._({
    required String identifier,
    required BehaviorSubject<T> subject,
    required PublishSubject<RefreshArgs> requestSubject,
    required PublishSubject<StoreUnitStatus> status,
  })  : _identifier = identifier,
        _status = status,
        _requestSubject = requestSubject,
        _subject = subject;

  factory StoreUnit.init({required String identifier, T? initialValue}) {
    if (initialValue == null) {
      return StoreUnit._(
        requestSubject: PublishSubject<RefreshArgs>(),
        status: PublishSubject<StoreUnitStatus>(),
        subject: BehaviorSubject<T>(),
        identifier: identifier,
      );
    }
    return StoreUnit._(
      subject: BehaviorSubject<T>.seeded(initialValue),
      identifier: identifier,
      requestSubject: PublishSubject<RefreshArgs>(),
      status: PublishSubject<StoreUnitStatus>(),
    );
  }

  final String _identifier;
  final BehaviorSubject<T> _subject;
  final PublishSubject<RefreshArgs> _requestSubject;
  final PublishSubject<StoreUnitStatus> _status;

  /// Gets the current value of the store.
  T get value => _subject.value;

  /// Gets the stream of the store.
  Stream<T> get stream => _subject.stream;

  /// Gets the stream of the store.
  Stream<RefreshArgs> get request => _requestSubject.stream;

  Stream<StoreUnitStatus> get status => _status.stream;

  @internal
  void sink(T value) {
    _subject.add(value);
  }

  /// Requests the store to update its value.
  void requestRefresh(RefreshArgs args) {
    _requestSubject.add(args);
  }

  /// Requests the store to refresh its value asynchronously.
  ///
  /// This method sends a refresh request with the given [args] and waits for the store to update its value.
  /// It combines the current value and status streams, and waits for a success or error status.
  ///
  /// Throws an [Exception] if there are no listeners on the request stream.
  ///
  /// [args] - The arguments to pass to the store for refreshing its value.
  /// [timeoutLimit] - The maximum duration to wait for the refresh to complete. Defaults to 45 seconds.
  ///
  /// Returns the updated value if the refresh is successful, or `null` if there is an error.
  Future<T?> requestRefreshAsync(
    RefreshArgs args, {
    Duration? timeoutLimit,
    bool returnCurrentValueOnTimeout = true,
  }) async {
    // TODO(TseoH): requestRefreshAsync Implement on going
    final isRequestHasListener = _requestSubject.hasListener;
    final t = T;

    if (!isRequestHasListener) {
      throw Exception('Err $t: \nTo use requestRefreshAsync, you must listen to the request stream and implement the logic to handle the request');
    }
    final completer = Completer<T?>();
    final subscription = Rx.combineLatest2(
      _subject..startWith(_subject.value),
      _status..startWith(StoreUnitStatus.initial),
      (a, b) => (a, b),
    ).skip(1).listen(
      (event) {
        final (value, status) = event;
        if (completer.isCompleted) return;
        if (status.isSuccess) {
          completer.complete(value);
        } else if (status.isErr) {
          completer.complete(null);
        }
      },
    );
    _requestSubject.add(args);
    unawaited(completer.future.whenComplete(subscription.cancel));
    return completer.future.timeout(
      timeoutLimit ?? const Duration(seconds: 30),
      onTimeout: () {
        if (returnCurrentValueOnTimeout) {
          return _subject.value;
        }
        throw TimeoutException('Err $t:\nThe request to refresh the store has timed out');
      },
    );
  }

  void toLoading() {
    _status.add(StoreUnitStatus.loading);
  }

  void toSuccess([T? value]) {
    _status.add(StoreUnitStatus.success);
    if (value != null) {
      sink(value);
    }
  }

  void toErr() {
    _status.add(StoreUnitStatus.err);
  }

  /// Closes the store.
  void close() {
    _subject.close();
    _requestSubject.close();
    _status.close();
  }

  @override
  List<Object> get props => [
        _identifier,
        _subject,
        _requestSubject,
        _status,
      ];
}
