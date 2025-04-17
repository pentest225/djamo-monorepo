import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/loans/entities/entities.dart';
import 'package:domain/src/loans/objects/objects.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class LoansStoreWrapper extends StoreWrapper {
  LoansStoreWrapper({super.identifier = 'Loans'}) {
    //##Initializations
    _selectedLoan = StoreUnit<LoanEntity, bool>.init(
      identifier: '_loans',
      initialValue: LoanEntity.empty,
    );
    _loans = StoreUnit<ClientLoansObject, bool>.init(
      identifier: '_loans',
      initialValue: ClientLoansObject.empty,
    );
    _reimbursementCallToAction = StoreUnit<LoanScoreCriteriaEntity, bool>.init(
      identifier: '_loans',
      initialValue: LoanScoreCriteriaEntity.empty,
    );
  }

  //##Declarations
  late final StoreUnit<LoanEntity, bool> _selectedLoan;
  late final StoreUnit<ClientLoansObject, bool> _loans;
  late final StoreUnit<LoanScoreCriteriaEntity, bool> _reimbursementCallToAction;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      LoanEntity: _selectedLoan.value,
      ClientLoansObject: _loans.value,
      LoanScoreCriteriaEntity: _reimbursementCallToAction.value,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'value',
      ),
    );
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      LoanEntity: _selectedLoan.stream,
      ClientLoansObject: _loans.stream,
      LoanScoreCriteriaEntity: _reimbursementCallToAction.stream,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'stream',
      ),
    );
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      LoanEntity: _selectedLoan.request,
      ClientLoansObject: _loans.request,
      LoanScoreCriteriaEntity: _reimbursementCallToAction.request,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'request',
      ),
    );
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      LoanEntity: _selectedLoan.status,
      ClientLoansObject: _loans.status,
      LoanScoreCriteriaEntity: _reimbursementCallToAction.status,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'status',
      ),
    );
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      LoanEntity: (a) => _selectedLoan.sink(a as LoanEntity),
      ClientLoansObject: (a) => _loans.sink(a as ClientLoansObject),
      LoanScoreCriteriaEntity: (a) => _reimbursementCallToAction.sink(a as LoanScoreCriteriaEntity),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'sink',
      ),
    );
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      LoanEntity: () => _selectedLoan.requestRefresh(args as bool),
      ClientLoansObject: () => _loans.requestRefresh(args as bool),
      LoanScoreCriteriaEntity: () => _reimbursementCallToAction.requestRefresh(args as bool),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'requestRefresh',
      ),
    );
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      LoanEntity: () => _selectedLoan.toLoading(),
      ClientLoansObject: () => _loans.toLoading(),
      LoanScoreCriteriaEntity: () => _reimbursementCallToAction.toLoading(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'toLoading',
      ),
    );
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      LoanEntity: () => _selectedLoan.toSuccess(value as LoanEntity?),
      ClientLoansObject: () => _loans.toSuccess(value as ClientLoansObject?),
      LoanScoreCriteriaEntity: () => _reimbursementCallToAction.toSuccess(value as LoanScoreCriteriaEntity?),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'toSuccess',
      ),
    );
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      LoanEntity: () => _selectedLoan.toErr(),
      ClientLoansObject: () => _loans.toErr(),
      LoanScoreCriteriaEntity: () => _reimbursementCallToAction.toErr(),
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'toErr',
      ),
    );
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      LoanEntity: () => _selectedLoan.requestRefreshAsync(args as bool) as Future<T?>,
      ClientLoansObject: () => _loans.requestRefreshAsync(args as bool) as Future<T?>,
      LoanScoreCriteriaEntity: () => _reimbursementCallToAction.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(
      type,
      () => throw nonSupportedTypeInStoreWrapper<T>(
        'LoansStoreWrapper',
        'requestRefreshAsync',
      ),
    );
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _selectedLoan.close();
    _loans.close();
    _reimbursementCallToAction.close();
  }
}
