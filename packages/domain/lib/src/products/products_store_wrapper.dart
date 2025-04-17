import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/products/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class ProductsStoreWrapper extends StoreWrapper {
  ProductsStoreWrapper({super.identifier = 'Products'}) {
    //##Initializations
    _products = StoreUnit<ProductEntities, bool>.init(identifier: '_products', initialValue: const []);
    _userCurrentProduct = StoreUnit<ProductEntity, bool>.init(identifier: '_userCurrentProduct', initialValue: ProductEntity.empty);
  }

  //##Declarations
  late final StoreUnit<ProductEntities, bool> _products;
  late final StoreUnit<ProductEntity, bool> _userCurrentProduct;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      ProductEntities: _products.value,
      ProductEntity: _userCurrentProduct.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      ProductEntities: _products.stream,
      ProductEntity: _userCurrentProduct.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      ProductEntities: _products.request,
      ProductEntity: _userCurrentProduct.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      ProductEntities: _products.status,
      ProductEntity: _userCurrentProduct.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      ProductEntities: (a) => _products.sink(a as ProductEntities),
      ProductEntity: (a) => _userCurrentProduct.sink(a as ProductEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      ProductEntities: () => _products.requestRefresh(args as bool),
      ProductEntity: () => _userCurrentProduct.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      ProductEntities: () => _products.toErr(),
      ProductEntity: () => _userCurrentProduct.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      ProductEntities: () => _products.toLoading(),
      ProductEntity: () => _userCurrentProduct.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, StoreUnitSuccessCallback<T>>{
      //##ToSuccess
      ProductEntities: (a) => _products.toSuccess(a as ProductEntities?),
      ProductEntity: (a) => _userCurrentProduct.toSuccess(a as ProductEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'toSuccess'));
    return r(value);
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      ProductEntities: () => _products.requestRefreshAsync(args as bool) as Future<T?>,
      ProductEntity: () => _userCurrentProduct.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ProductsDataWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _products.close();
    _userCurrentProduct.close();
  }
}
