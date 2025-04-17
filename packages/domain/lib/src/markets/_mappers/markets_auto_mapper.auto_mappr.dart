// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../common/entities/currency_entity.dart' as _i5;
import '../../common/models/currency_model.dart' as _i4;
import '../entities/city_entity.dart' as _i11;
import '../entities/country_entity.dart' as _i13;
import '../entities/location_entity.dart' as _i9;
import '../entities/market_entity.dart' as _i3;
import '../entities/position_entity.dart' as _i7;
import '../models/city_model.dart' as _i10;
import '../models/country_model.dart' as _i12;
import '../models/location_model.dart' as _i8;
import '../models/market_model.dart' as _i2;
import '../models/position_model.dart' as _i6;

/// {@template package:domain/src/markets/_mappers/markets_auto_mapper.dart}
/// Available mappings:
/// - `MarketModel` → `MarketEntity`.
/// - `MarketEntity` → `MarketModel`.
/// - `CurrencyModel` → `CurrencyEntity`.
/// - `CurrencyEntity` → `CurrencyModel`.
/// - `PositionModel` → `PositionEntity`.
/// - `PositionEntity` → `PositionModel`.
/// - `LocationModel` → `LocationEntity`.
/// - `LocationEntity` → `LocationModel`.
/// - `CityModel` → `CityEntity`.
/// - `CityEntity` → `CityModel`.
/// - `CountryModel` → `CountryEntity`.
/// - `CountryEntity` → `CountryModel`.
/// {@endtemplate}
class $MarketsAutoMapper implements _i1.AutoMapprInterface {
  const $MarketsAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.MarketModel>() ||
            sourceTypeOf == _typeOf<_i2.MarketModel?>()) &&
        (targetTypeOf == _typeOf<_i3.MarketEntity>() ||
            targetTypeOf == _typeOf<_i3.MarketEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.MarketEntity>() ||
            sourceTypeOf == _typeOf<_i3.MarketEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.MarketModel>() ||
            targetTypeOf == _typeOf<_i2.MarketModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CurrencyModel>() ||
            sourceTypeOf == _typeOf<_i4.CurrencyModel?>()) &&
        (targetTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            targetTypeOf == _typeOf<_i5.CurrencyEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            sourceTypeOf == _typeOf<_i5.CurrencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.CurrencyModel>() ||
            targetTypeOf == _typeOf<_i4.CurrencyModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.PositionModel>() ||
            sourceTypeOf == _typeOf<_i6.PositionModel?>()) &&
        (targetTypeOf == _typeOf<_i7.PositionEntity>() ||
            targetTypeOf == _typeOf<_i7.PositionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.PositionEntity>() ||
            sourceTypeOf == _typeOf<_i7.PositionEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.PositionModel>() ||
            targetTypeOf == _typeOf<_i6.PositionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.LocationModel>() ||
            sourceTypeOf == _typeOf<_i8.LocationModel?>()) &&
        (targetTypeOf == _typeOf<_i9.LocationEntity>() ||
            targetTypeOf == _typeOf<_i9.LocationEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.LocationEntity>() ||
            sourceTypeOf == _typeOf<_i9.LocationEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.LocationModel>() ||
            targetTypeOf == _typeOf<_i8.LocationModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.CityModel>() ||
            sourceTypeOf == _typeOf<_i10.CityModel?>()) &&
        (targetTypeOf == _typeOf<_i11.CityEntity>() ||
            targetTypeOf == _typeOf<_i11.CityEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.CityEntity>() ||
            sourceTypeOf == _typeOf<_i11.CityEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.CityModel>() ||
            targetTypeOf == _typeOf<_i10.CityModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.CountryModel>() ||
            sourceTypeOf == _typeOf<_i12.CountryModel?>()) &&
        (targetTypeOf == _typeOf<_i13.CountryEntity>() ||
            targetTypeOf == _typeOf<_i13.CountryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.CountryEntity>() ||
            sourceTypeOf == _typeOf<_i13.CountryEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.CountryModel>() ||
            targetTypeOf == _typeOf<_i12.CountryModel?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(
        model,
        onMappingError: onMappingError,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
          (item) => _safeConvert(item, onMappingError: onMappingError));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.MarketModel>() ||
            sourceTypeOf == _typeOf<_i2.MarketModel?>()) &&
        (targetTypeOf == _typeOf<_i3.MarketEntity>() ||
            targetTypeOf == _typeOf<_i3.MarketEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$MarketModel_To__i3$MarketEntity(
          (model as _i2.MarketModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.MarketEntity>() ||
            sourceTypeOf == _typeOf<_i3.MarketEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.MarketModel>() ||
            targetTypeOf == _typeOf<_i2.MarketModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$MarketEntity_To__i2$MarketModel(
          (model as _i3.MarketEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CurrencyModel>() ||
            sourceTypeOf == _typeOf<_i4.CurrencyModel?>()) &&
        (targetTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            targetTypeOf == _typeOf<_i5.CurrencyEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CurrencyModel_To__i5$CurrencyEntity(
          (model as _i4.CurrencyModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.CurrencyEntity>() ||
            sourceTypeOf == _typeOf<_i5.CurrencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.CurrencyModel>() ||
            targetTypeOf == _typeOf<_i4.CurrencyModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$CurrencyEntity_To__i4$CurrencyModel(
          (model as _i5.CurrencyEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.PositionModel>() ||
            sourceTypeOf == _typeOf<_i6.PositionModel?>()) &&
        (targetTypeOf == _typeOf<_i7.PositionEntity>() ||
            targetTypeOf == _typeOf<_i7.PositionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$PositionModel_To__i7$PositionEntity(
          (model as _i6.PositionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.PositionEntity>() ||
            sourceTypeOf == _typeOf<_i7.PositionEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.PositionModel>() ||
            targetTypeOf == _typeOf<_i6.PositionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$PositionEntity_To__i6$PositionModel(
          (model as _i7.PositionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.LocationModel>() ||
            sourceTypeOf == _typeOf<_i8.LocationModel?>()) &&
        (targetTypeOf == _typeOf<_i9.LocationEntity>() ||
            targetTypeOf == _typeOf<_i9.LocationEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$LocationModel_To__i9$LocationEntity(
          (model as _i8.LocationModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.LocationEntity>() ||
            sourceTypeOf == _typeOf<_i9.LocationEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.LocationModel>() ||
            targetTypeOf == _typeOf<_i8.LocationModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$LocationEntity_To__i8$LocationModel(
          (model as _i9.LocationEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.CityModel>() ||
            sourceTypeOf == _typeOf<_i10.CityModel?>()) &&
        (targetTypeOf == _typeOf<_i11.CityEntity>() ||
            targetTypeOf == _typeOf<_i11.CityEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$CityModel_To__i11$CityEntity((model as _i10.CityModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.CityEntity>() ||
            sourceTypeOf == _typeOf<_i11.CityEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.CityModel>() ||
            targetTypeOf == _typeOf<_i10.CityModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$CityEntity_To__i10$CityModel(
          (model as _i11.CityEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.CountryModel>() ||
            sourceTypeOf == _typeOf<_i12.CountryModel?>()) &&
        (targetTypeOf == _typeOf<_i13.CountryEntity>() ||
            targetTypeOf == _typeOf<_i13.CountryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$CountryModel_To__i13$CountryEntity(
          (model as _i12.CountryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.CountryEntity>() ||
            sourceTypeOf == _typeOf<_i13.CountryEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.CountryModel>() ||
            targetTypeOf == _typeOf<_i12.CountryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$CountryEntity_To__i12$CountryModel(
          (model as _i13.CountryEntity?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    try {
      return _convert(
        model,
        canReturnNull: true,
      );
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:domain/src/markets/_mappers/markets_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.MarketEntity _map__i2$MarketModel_To__i3$MarketEntity(
      _i2.MarketModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MarketModel → MarketEntity failed because MarketModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MarketModel, MarketEntity> to handle null values during mapping.');
    }
    return _i3.MarketEntity(
      id: model.id,
      name: model.name,
      isoCode: model.isoCode,
      isInProspection: model.isInProspection,
      flagUrl: model.flagUrl,
      currency: _map__i4$CurrencyModel_To__i5$CurrencyEntity(model.currency),
      extras: model.extras,
    );
  }

  _i2.MarketModel _map__i3$MarketEntity_To__i2$MarketModel(
      _i3.MarketEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MarketEntity → MarketModel failed because MarketEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MarketEntity, MarketModel> to handle null values during mapping.');
    }
    return _i2.MarketModel(
      id: model.id,
      name: model.name,
      isoCode: model.isoCode,
      isInProspection: model.isInProspection,
      flagUrl: model.flagUrl,
      currency: _map__i5$CurrencyEntity_To__i4$CurrencyModel(model.currency),
      extras: model.extras,
    );
  }

  _i5.CurrencyEntity _map__i4$CurrencyModel_To__i5$CurrencyEntity(
      _i4.CurrencyModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyModel → CurrencyEntity failed because CurrencyModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyModel, CurrencyEntity> to handle null values during mapping.');
    }
    return _i5.CurrencyEntity(
      name: model.name,
      isoCode: model.isoCode,
      formatting: model.formatting,
      symbol: model.symbol,
    );
  }

  _i4.CurrencyModel _map__i5$CurrencyEntity_To__i4$CurrencyModel(
      _i5.CurrencyEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyEntity → CurrencyModel failed because CurrencyEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyEntity, CurrencyModel> to handle null values during mapping.');
    }
    return _i4.CurrencyModel(
      name: model.name,
      isoCode: model.isoCode,
      formatting: model.formatting,
      symbol: model.symbol,
    );
  }

  _i7.PositionEntity _map__i6$PositionModel_To__i7$PositionEntity(
      _i6.PositionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PositionModel → PositionEntity failed because PositionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PositionModel, PositionEntity> to handle null values during mapping.');
    }
    return _i7.PositionEntity(
      latitude: model.latitude,
      longitude: model.longitude,
    );
  }

  _i6.PositionModel _map__i7$PositionEntity_To__i6$PositionModel(
      _i7.PositionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PositionEntity → PositionModel failed because PositionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PositionEntity, PositionModel> to handle null values during mapping.');
    }
    return _i6.PositionModel(
      latitude: model.latitude,
      longitude: model.longitude,
    );
  }

  _i9.LocationEntity _map__i8$LocationModel_To__i9$LocationEntity(
      _i8.LocationModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LocationModel → LocationEntity failed because LocationModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LocationModel, LocationEntity> to handle null values during mapping.');
    }
    return _i9.LocationEntity(
      id: model.id,
      name: model.name,
      firstName: model.firstName,
      lastName: model.lastName,
      type: model.type,
      category: model.category,
      label: model.label,
      reference: model.reference,
      position: model.position,
      phoneNumber: model.phoneNumber,
      distance: model.distance,
    );
  }

  _i8.LocationModel _map__i9$LocationEntity_To__i8$LocationModel(
      _i9.LocationEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping LocationEntity → LocationModel failed because LocationEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<LocationEntity, LocationModel> to handle null values during mapping.');
    }
    return _i8.LocationModel(
      id: model.id,
      name: model.name,
      firstName: model.firstName,
      lastName: model.lastName,
      type: model.type,
      category: model.category,
      label: model.label,
      reference: model.reference,
      position: model.position,
      phoneNumber: model.phoneNumber,
      distance: model.distance,
    );
  }

  _i11.CityEntity _map__i10$CityModel_To__i11$CityEntity(
      _i10.CityModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CityModel → CityEntity failed because CityModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CityModel, CityEntity> to handle null values during mapping.');
    }
    return _i11.CityEntity(
      id: model.id,
      name: model.name,
      marketId: model.marketId,
    );
  }

  _i10.CityModel _map__i11$CityEntity_To__i10$CityModel(
      _i11.CityEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CityEntity → CityModel failed because CityEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CityEntity, CityModel> to handle null values during mapping.');
    }
    return _i10.CityModel(
      id: model.id,
      name: model.name,
      marketId: model.marketId,
    );
  }

  _i13.CountryEntity _map__i12$CountryModel_To__i13$CountryEntity(
      _i12.CountryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CountryModel → CountryEntity failed because CountryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CountryModel, CountryEntity> to handle null values during mapping.');
    }
    return _i13.CountryEntity(
      id: model.id,
      name: model.name,
      isoCode: model.isoCode,
      flagUrl: model.flagUrl,
      msisdnLength: model.msisdnLength,
      msisdnInputMask: model.msisdnInputMask,
      callingCode: model.callingCode,
    );
  }

  _i12.CountryModel _map__i13$CountryEntity_To__i12$CountryModel(
      _i13.CountryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CountryEntity → CountryModel failed because CountryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CountryEntity, CountryModel> to handle null values during mapping.');
    }
    return _i12.CountryModel(
      id: model.id,
      name: model.name,
      isoCode: model.isoCode,
      flagUrl: model.flagUrl,
      msisdnLength: model.msisdnLength,
      msisdnInputMask: model.msisdnInputMask,
      callingCode: model.callingCode,
    );
  }
}
