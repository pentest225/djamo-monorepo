import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/iban/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class IbanStoreWrapper extends StoreWrapper {
  IbanStoreWrapper({super.identifier = 'Iban'}) {
    //##Initializations
    _iban = StoreUnit<IbanEntity, bool>.init(
      identifier: '_iban',
      initialValue: IbanEntity.empty,
    );
  }

  //##Declarations
  late final StoreUnit<IbanEntity, bool> _iban;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      IbanEntity: _iban.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      IbanEntity: _iban.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      IbanEntity: _iban.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      IbanEntity: _iban.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      IbanEntity: (a) => _iban.sink(a as IbanEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Request
      IbanEntity: () => _iban.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      IbanEntity: () => _iban.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      IbanEntity: () => _iban.toSuccess(value as IbanEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'toSuccess'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      IbanEntity: () => _iban.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'toErr'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, Future<T?>>{
      //##RequestResheshAsync
      IbanEntity: _iban.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('IbanDataWrapper', 'requestRefreshAsync'));
    return r;
  }

  @override
  void dispose() {
    //##Dispose
    _iban.close();
  }
}
