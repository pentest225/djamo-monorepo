import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/markets/entities/entities.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class MarketsStoreWrapper extends StoreWrapper {
  MarketsStoreWrapper({super.identifier = 'Markets'}) {
    //##Initializations
    _position = StoreUnit<PositionEntity, bool>.init(identifier: '_position', initialValue: PositionEntity.empty);
    _countries = StoreUnit<CountryEntities, bool>.init(identifier: '_countries', initialValue: const []);
    _selectedCountry = StoreUnit<CountryEntity, bool>.init(identifier: '_selectedCountry', initialValue: CountryEntity.empty);
    _cities = StoreUnit<CityEntities, bool>.init(identifier: '_cities', initialValue: const []);
    _selectedCity = StoreUnit<CityEntity, bool>.init(identifier: '_selectedCity', initialValue: CityEntity.empty);
    _locations = StoreUnit<LocationEntities, bool>.init(identifier: '_locations', initialValue: const []);
    _selectedLocation = StoreUnit<LocationEntity, bool>.init(identifier: '_selectedLocation', initialValue: LocationEntity.empty);
  }

  //##Declarations
  late final StoreUnit<PositionEntity, bool> _position;
  late final StoreUnit<CountryEntities, bool> _countries;
  late final StoreUnit<CountryEntity, bool> _selectedCountry;
  late final StoreUnit<CityEntities, bool> _cities;
  late final StoreUnit<CityEntity, bool> _selectedCity;
  late final StoreUnit<LocationEntities, bool> _locations;
  late final StoreUnit<LocationEntity, bool> _selectedLocation;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      PositionEntity: _position.value,
      CountryEntities: _countries.value,
      CountryEntity: _selectedCountry.value,
      CityEntities: _cities.value,
      CityEntity: _selectedCity.value,
      LocationEntities: _locations.value,
      LocationEntity: _selectedLocation.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      PositionEntity: _position.stream,
      CountryEntities: _countries.stream,
      CountryEntity: _selectedCountry.stream,
      CityEntities: _cities.stream,
      CityEntity: _selectedCity.stream,
      LocationEntities: _locations.stream,
      LocationEntity: _selectedLocation.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      PositionEntity: _position.request,
      CountryEntities: _countries.request,
      CountryEntity: _selectedCountry.request,
      CityEntities: _cities.request,
      CityEntity: _selectedCity.request,
      LocationEntities: _locations.request,
      LocationEntity: _selectedLocation.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    final r = <Type, Stream<StoreUnitStatus>>{
      //##Status
      PositionEntity: _position.status,
      CountryEntities: _countries.status,
      CountryEntity: _selectedCountry.status,
      CityEntities: _cities.status,
      CityEntity: _selectedCity.status,
      LocationEntities: _locations.status,
      LocationEntity: _selectedLocation.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'status'));
    return r;
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      PositionEntity: (a) => _position.sink(a as PositionEntity),
      CountryEntities: (a) => _countries.sink(a as CountryEntities),
      CountryEntity: (a) => _selectedCountry.sink(a as CountryEntity),
      CityEntities: (a) => _cities.sink(a as CityEntities),
      CityEntity: (a) => _selectedCity.sink(a as CityEntity),
      LocationEntities: (a) => _locations.sink(a as LocationEntities),
      LocationEntity: (a) => _selectedLocation.sink(a as LocationEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      PositionEntity: () => _position.requestRefresh(args as bool),
      CountryEntities: () => _countries.requestRefresh(args as bool),
      CountryEntity: () => _selectedCountry.requestRefresh(args as bool),
      CityEntities: () => _cities.requestRefresh(args as bool),
      CityEntity: () => _selectedCity.requestRefresh(args as bool),
      LocationEntities: () => _locations.requestRefresh(args as bool),
      LocationEntity: () => _selectedLocation.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      PositionEntity: () => _position.toErr(),
      CountryEntities: () => _countries.toErr(),
      CountryEntity: () => _selectedCountry.toErr(),
      CityEntities: () => _cities.toErr(),
      CityEntity: () => _selectedCity.toErr(),
      LocationEntities: () => _locations.toErr(),
      LocationEntity: () => _selectedLocation.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      PositionEntity: () => _position.toLoading(),
      CountryEntities: () => _countries.toLoading(),
      CountryEntity: () => _selectedCountry.toLoading(),
      CityEntities: () => _cities.toLoading(),
      CityEntity: () => _selectedCity.toLoading(),
      LocationEntities: () => _locations.toLoading(),
      LocationEntity: () => _selectedLocation.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      PositionEntity: () => _position.toSuccess(value as PositionEntity?),
      CountryEntities: () => _countries.toSuccess(value as CountryEntities?),
      CountryEntity: () => _selectedCountry.toSuccess(value as CountryEntity?),
      CityEntities: () => _cities.toSuccess(value as CityEntities?),
      CityEntity: () => _selectedCity.toSuccess(value as CityEntity?),
      LocationEntities: () => _locations.toSuccess(value as LocationEntities?),
      LocationEntity: () => _selectedLocation.toSuccess(value as LocationEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      PositionEntity: () => _position.requestRefreshAsync(args as bool) as Future<T?>,
      CountryEntities: () => _countries.requestRefreshAsync(args as bool) as Future<T?>,
      CountryEntity: () => _selectedCountry.requestRefreshAsync(args as bool) as Future<T?>,
      CityEntities: () => _cities.requestRefreshAsync(args as bool) as Future<T?>,
      CityEntity: () => _selectedCity.requestRefreshAsync(args as bool) as Future<T?>,
      LocationEntities: () => _locations.requestRefreshAsync(args as bool) as Future<T?>,
      LocationEntity: () => _selectedLocation.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('MarketsStoreWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _position.close();
    _countries.close();
    _selectedCountry.close();
    _cities.close();
    _selectedCity.close();
    _locations.close();
    _selectedLocation.close();
  }
}
