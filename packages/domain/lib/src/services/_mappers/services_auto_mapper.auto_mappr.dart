// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../common/entities/currency_entity.dart' as _i19;
import '../../common/models/currency_model.dart' as _i18;
import '../../markets/entities/market_entity.dart' as _i17;
import '../../markets/models/market_model.dart' as _i16;
import '../entities/bank_service_entity.dart' as _i13;
import '../entities/bank_wire_account_service_entity.dart' as _i15;
import '../entities/biller_service_config_entity.dart' as _i9;
import '../entities/biller_service_entity.dart' as _i7;
import '../entities/biller_service_fees_config_entity.dart' as _i5;
import '../entities/biller_service_field_entity.dart' as _i11;
import '../entities/biller_service_field_selectable_item_entity.dart' as _i3;
import '../entities/service_entity.dart' as _i21;
import '../models/bank_service_model.dart' as _i12;
import '../models/biller_service_config_model.dart' as _i8;
import '../models/biller_service_fees_config_model.dart' as _i4;
import '../models/biller_service_field_model.dart' as _i10;
import '../models/biller_service_field_selectable_item_model.dart' as _i2;
import '../models/biller_service_model.dart' as _i6;
import '../models/service_model.dart' as _i20;
import '../models/wire_account_service_model.dart' as _i14;

/// {@template package:domain/src/services/_mappers/services_auto_mapper.dart}
/// Available mappings:
/// - `BillerServiceFieldSelectableItemModel` → `BillerServiceFieldSelectableItemEntity`.
/// - `BillerServiceFieldSelectableItemEntity` → `BillerServiceFieldSelectableItemModel`.
/// - `BillerServiceFeesConfigModel` → `BillerServiceFeesConfigEntity`.
/// - `BillerServiceFeesConfigEntity` → `BillerServiceFeesConfigModel`.
/// - `BillerServiceModel` → `BillerServiceEntity`.
/// - `BillerServiceEntity` → `BillerServiceModel`.
/// - `BillerServiceConfigModel` → `BillerServiceConfigEntity`.
/// - `BillerServiceConfigEntity` → `BillerServiceConfigModel`.
/// - `BillerServiceFieldModel` → `BillerServiceFieldEntity`.
/// - `BillerServiceFieldEntity` → `BillerServiceFieldModel`.
/// - `BankServiceModel` → `BankServiceEntity`.
/// - `BankServiceEntity` → `BankServiceModel`.
/// - `WireAccountServiceModel` → `BankWireAccountServiceEntity`.
/// - `BankWireAccountServiceEntity` → `WireAccountServiceModel`.
/// - `MarketModel` → `MarketEntity`.
/// - `MarketEntity` → `MarketModel`.
/// - `CurrencyModel` → `CurrencyEntity`.
/// - `CurrencyEntity` → `CurrencyModel`.
/// - `ServiceModel` → `ServiceEntity`.
/// - `ServiceEntity` → `ServiceModel`.
/// {@endtemplate}
class $ServicesAutoMapper implements _i1.AutoMapprInterface {
  const $ServicesAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.BillerServiceFieldSelectableItemModel>() ||
            sourceTypeOf ==
                _typeOf<_i2.BillerServiceFieldSelectableItemModel?>()) &&
        (targetTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity>() ||
            targetTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity?>())) {
      return true;
    }
    if ((sourceTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity>() ||
            sourceTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.BillerServiceFieldSelectableItemModel>() ||
            targetTypeOf ==
                _typeOf<_i2.BillerServiceFieldSelectableItemModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel>() ||
            sourceTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity>() ||
            targetTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity>() ||
            sourceTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel>() ||
            targetTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.BillerServiceModel>() ||
            sourceTypeOf == _typeOf<_i6.BillerServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i7.BillerServiceEntity>() ||
            targetTypeOf == _typeOf<_i7.BillerServiceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.BillerServiceEntity>() ||
            sourceTypeOf == _typeOf<_i7.BillerServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.BillerServiceModel>() ||
            targetTypeOf == _typeOf<_i6.BillerServiceModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.BillerServiceConfigModel>() ||
            sourceTypeOf == _typeOf<_i8.BillerServiceConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i9.BillerServiceConfigEntity>() ||
            targetTypeOf == _typeOf<_i9.BillerServiceConfigEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.BillerServiceConfigEntity>() ||
            sourceTypeOf == _typeOf<_i9.BillerServiceConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.BillerServiceConfigModel>() ||
            targetTypeOf == _typeOf<_i8.BillerServiceConfigModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.BillerServiceFieldModel>() ||
            sourceTypeOf == _typeOf<_i10.BillerServiceFieldModel?>()) &&
        (targetTypeOf == _typeOf<_i11.BillerServiceFieldEntity>() ||
            targetTypeOf == _typeOf<_i11.BillerServiceFieldEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.BillerServiceFieldEntity>() ||
            sourceTypeOf == _typeOf<_i11.BillerServiceFieldEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.BillerServiceFieldModel>() ||
            targetTypeOf == _typeOf<_i10.BillerServiceFieldModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.BankServiceModel>() ||
            sourceTypeOf == _typeOf<_i12.BankServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i13.BankServiceEntity>() ||
            targetTypeOf == _typeOf<_i13.BankServiceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.BankServiceEntity>() ||
            sourceTypeOf == _typeOf<_i13.BankServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.BankServiceModel>() ||
            targetTypeOf == _typeOf<_i12.BankServiceModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.WireAccountServiceModel>() ||
            sourceTypeOf == _typeOf<_i14.WireAccountServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i15.BankWireAccountServiceEntity>() ||
            targetTypeOf == _typeOf<_i15.BankWireAccountServiceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i15.BankWireAccountServiceEntity>() ||
            sourceTypeOf == _typeOf<_i15.BankWireAccountServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.WireAccountServiceModel>() ||
            targetTypeOf == _typeOf<_i14.WireAccountServiceModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i16.MarketModel>() ||
            sourceTypeOf == _typeOf<_i16.MarketModel?>()) &&
        (targetTypeOf == _typeOf<_i17.MarketEntity>() ||
            targetTypeOf == _typeOf<_i17.MarketEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i17.MarketEntity>() ||
            sourceTypeOf == _typeOf<_i17.MarketEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.MarketModel>() ||
            targetTypeOf == _typeOf<_i16.MarketModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i18.CurrencyModel>() ||
            sourceTypeOf == _typeOf<_i18.CurrencyModel?>()) &&
        (targetTypeOf == _typeOf<_i19.CurrencyEntity>() ||
            targetTypeOf == _typeOf<_i19.CurrencyEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i19.CurrencyEntity>() ||
            sourceTypeOf == _typeOf<_i19.CurrencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i18.CurrencyModel>() ||
            targetTypeOf == _typeOf<_i18.CurrencyModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i20.ServiceModel>() ||
            sourceTypeOf == _typeOf<_i20.ServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i21.ServiceEntity>() ||
            targetTypeOf == _typeOf<_i21.ServiceEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i21.ServiceEntity>() ||
            sourceTypeOf == _typeOf<_i21.ServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i20.ServiceModel>() ||
            targetTypeOf == _typeOf<_i20.ServiceModel?>())) {
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.BillerServiceFieldSelectableItemModel>() ||
            sourceTypeOf ==
                _typeOf<_i2.BillerServiceFieldSelectableItemModel?>()) &&
        (targetTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity>() ||
            targetTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$BillerServiceFieldSelectableItemModel_To__i3$BillerServiceFieldSelectableItemEntity(
          (model as _i2.BillerServiceFieldSelectableItemModel?)) as TARGET);
    }
    if ((sourceTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity>() ||
            sourceTypeOf ==
                _typeOf<_i3.BillerServiceFieldSelectableItemEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.BillerServiceFieldSelectableItemModel>() ||
            targetTypeOf ==
                _typeOf<_i2.BillerServiceFieldSelectableItemModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$BillerServiceFieldSelectableItemEntity_To__i2$BillerServiceFieldSelectableItemModel(
          (model as _i3.BillerServiceFieldSelectableItemEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel>() ||
            sourceTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity>() ||
            targetTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$BillerServiceFeesConfigModel_To__i5$BillerServiceFeesConfigEntity(
          (model as _i4.BillerServiceFeesConfigModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity>() ||
            sourceTypeOf == _typeOf<_i5.BillerServiceFeesConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel>() ||
            targetTypeOf == _typeOf<_i4.BillerServiceFeesConfigModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$BillerServiceFeesConfigEntity_To__i4$BillerServiceFeesConfigModel(
          (model as _i5.BillerServiceFeesConfigEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.BillerServiceModel>() ||
            sourceTypeOf == _typeOf<_i6.BillerServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i7.BillerServiceEntity>() ||
            targetTypeOf == _typeOf<_i7.BillerServiceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$BillerServiceModel_To__i7$BillerServiceEntity(
          (model as _i6.BillerServiceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.BillerServiceEntity>() ||
            sourceTypeOf == _typeOf<_i7.BillerServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.BillerServiceModel>() ||
            targetTypeOf == _typeOf<_i6.BillerServiceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$BillerServiceEntity_To__i6$BillerServiceModel(
          (model as _i7.BillerServiceEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.BillerServiceConfigModel>() ||
            sourceTypeOf == _typeOf<_i8.BillerServiceConfigModel?>()) &&
        (targetTypeOf == _typeOf<_i9.BillerServiceConfigEntity>() ||
            targetTypeOf == _typeOf<_i9.BillerServiceConfigEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$BillerServiceConfigModel_To__i9$BillerServiceConfigEntity(
          (model as _i8.BillerServiceConfigModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.BillerServiceConfigEntity>() ||
            sourceTypeOf == _typeOf<_i9.BillerServiceConfigEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.BillerServiceConfigModel>() ||
            targetTypeOf == _typeOf<_i8.BillerServiceConfigModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$BillerServiceConfigEntity_To__i8$BillerServiceConfigModel(
          (model as _i9.BillerServiceConfigEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.BillerServiceFieldModel>() ||
            sourceTypeOf == _typeOf<_i10.BillerServiceFieldModel?>()) &&
        (targetTypeOf == _typeOf<_i11.BillerServiceFieldEntity>() ||
            targetTypeOf == _typeOf<_i11.BillerServiceFieldEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$BillerServiceFieldModel_To__i11$BillerServiceFieldEntity(
          (model as _i10.BillerServiceFieldModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.BillerServiceFieldEntity>() ||
            sourceTypeOf == _typeOf<_i11.BillerServiceFieldEntity?>()) &&
        (targetTypeOf == _typeOf<_i10.BillerServiceFieldModel>() ||
            targetTypeOf == _typeOf<_i10.BillerServiceFieldModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$BillerServiceFieldEntity_To__i10$BillerServiceFieldModel(
          (model as _i11.BillerServiceFieldEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.BankServiceModel>() ||
            sourceTypeOf == _typeOf<_i12.BankServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i13.BankServiceEntity>() ||
            targetTypeOf == _typeOf<_i13.BankServiceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$BankServiceModel_To__i13$BankServiceEntity(
          (model as _i12.BankServiceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.BankServiceEntity>() ||
            sourceTypeOf == _typeOf<_i13.BankServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i12.BankServiceModel>() ||
            targetTypeOf == _typeOf<_i12.BankServiceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$BankServiceEntity_To__i12$BankServiceModel(
          (model as _i13.BankServiceEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.WireAccountServiceModel>() ||
            sourceTypeOf == _typeOf<_i14.WireAccountServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i15.BankWireAccountServiceEntity>() ||
            targetTypeOf == _typeOf<_i15.BankWireAccountServiceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$WireAccountServiceModel_To__i15$BankWireAccountServiceEntity(
          (model as _i14.WireAccountServiceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i15.BankWireAccountServiceEntity>() ||
            sourceTypeOf == _typeOf<_i15.BankWireAccountServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i14.WireAccountServiceModel>() ||
            targetTypeOf == _typeOf<_i14.WireAccountServiceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i15$BankWireAccountServiceEntity_To__i14$WireAccountServiceModel(
          (model as _i15.BankWireAccountServiceEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i16.MarketModel>() ||
            sourceTypeOf == _typeOf<_i16.MarketModel?>()) &&
        (targetTypeOf == _typeOf<_i17.MarketEntity>() ||
            targetTypeOf == _typeOf<_i17.MarketEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i16$MarketModel_To__i17$MarketEntity(
          (model as _i16.MarketModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i17.MarketEntity>() ||
            sourceTypeOf == _typeOf<_i17.MarketEntity?>()) &&
        (targetTypeOf == _typeOf<_i16.MarketModel>() ||
            targetTypeOf == _typeOf<_i16.MarketModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i17$MarketEntity_To__i16$MarketModel(
          (model as _i17.MarketEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i18.CurrencyModel>() ||
            sourceTypeOf == _typeOf<_i18.CurrencyModel?>()) &&
        (targetTypeOf == _typeOf<_i19.CurrencyEntity>() ||
            targetTypeOf == _typeOf<_i19.CurrencyEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i18$CurrencyModel_To__i19$CurrencyEntity(
          (model as _i18.CurrencyModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i19.CurrencyEntity>() ||
            sourceTypeOf == _typeOf<_i19.CurrencyEntity?>()) &&
        (targetTypeOf == _typeOf<_i18.CurrencyModel>() ||
            targetTypeOf == _typeOf<_i18.CurrencyModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i19$CurrencyEntity_To__i18$CurrencyModel(
          (model as _i19.CurrencyEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i20.ServiceModel>() ||
            sourceTypeOf == _typeOf<_i20.ServiceModel?>()) &&
        (targetTypeOf == _typeOf<_i21.ServiceEntity>() ||
            targetTypeOf == _typeOf<_i21.ServiceEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i20$ServiceModel_To__i21$ServiceEntity(
          (model as _i20.ServiceModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i21.ServiceEntity>() ||
            sourceTypeOf == _typeOf<_i21.ServiceEntity?>()) &&
        (targetTypeOf == _typeOf<_i20.ServiceModel>() ||
            targetTypeOf == _typeOf<_i20.ServiceModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i21$ServiceEntity_To__i20$ServiceModel(
          (model as _i21.ServiceEntity?)) as TARGET);
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
  /// {@macro package:domain/src/services/_mappers/services_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.BillerServiceFieldSelectableItemEntity
      _map__i2$BillerServiceFieldSelectableItemModel_To__i3$BillerServiceFieldSelectableItemEntity(
          _i2.BillerServiceFieldSelectableItemModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceFieldSelectableItemModel → BillerServiceFieldSelectableItemEntity failed because BillerServiceFieldSelectableItemModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceFieldSelectableItemModel, BillerServiceFieldSelectableItemEntity> to handle null values during mapping.');
    }
    return _i3.BillerServiceFieldSelectableItemEntity(
      value: model.value,
      title: model.title,
      subtitle: model.subtitle,
      formatted: model.formatted,
      code: model.code,
      type: model.type,
    );
  }

  _i2.BillerServiceFieldSelectableItemModel
      _map__i3$BillerServiceFieldSelectableItemEntity_To__i2$BillerServiceFieldSelectableItemModel(
          _i3.BillerServiceFieldSelectableItemEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceFieldSelectableItemEntity → BillerServiceFieldSelectableItemModel failed because BillerServiceFieldSelectableItemEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceFieldSelectableItemEntity, BillerServiceFieldSelectableItemModel> to handle null values during mapping.');
    }
    return _i2.BillerServiceFieldSelectableItemModel(
      value: model.value,
      title: model.title,
      subtitle: model.subtitle,
      formatted: model.formatted,
      code: model.code,
      type: model.type,
    );
  }

  _i5.BillerServiceFeesConfigEntity
      _map__i4$BillerServiceFeesConfigModel_To__i5$BillerServiceFeesConfigEntity(
          _i4.BillerServiceFeesConfigModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceFeesConfigModel → BillerServiceFeesConfigEntity failed because BillerServiceFeesConfigModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceFeesConfigModel, BillerServiceFeesConfigEntity> to handle null values during mapping.');
    }
    return _i5.BillerServiceFeesConfigEntity(
      type: model.type,
      value: model.value,
    );
  }

  _i4.BillerServiceFeesConfigModel
      _map__i5$BillerServiceFeesConfigEntity_To__i4$BillerServiceFeesConfigModel(
          _i5.BillerServiceFeesConfigEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceFeesConfigEntity → BillerServiceFeesConfigModel failed because BillerServiceFeesConfigEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceFeesConfigEntity, BillerServiceFeesConfigModel> to handle null values during mapping.');
    }
    return _i4.BillerServiceFeesConfigModel(
      type: model.type,
      value: model.value,
    );
  }

  _i7.BillerServiceEntity
      _map__i6$BillerServiceModel_To__i7$BillerServiceEntity(
          _i6.BillerServiceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceModel → BillerServiceEntity failed because BillerServiceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceModel, BillerServiceEntity> to handle null values during mapping.');
    }
    return _i7.BillerServiceEntity(
      id: model.id,
      externalBillerId: model.externalBillerId,
      billerName: model.billerName,
      label: model.label,
      description: model.description,
      category: model.category,
      iconUrl: model.iconUrl,
      providerName: model.providerName,
      status: model.status,
      isActive: model.isActive,
      config:
          _map__i8$BillerServiceConfigModel_To__i9$BillerServiceConfigEntity(
              model.config),
    );
  }

  _i6.BillerServiceModel _map__i7$BillerServiceEntity_To__i6$BillerServiceModel(
      _i7.BillerServiceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceEntity → BillerServiceModel failed because BillerServiceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceEntity, BillerServiceModel> to handle null values during mapping.');
    }
    return _i6.BillerServiceModel(
      id: model.id,
      externalBillerId: model.externalBillerId,
      billerName: model.billerName,
      label: model.label,
      description: model.description,
      category: model.category,
      iconUrl: model.iconUrl,
      providerName: model.providerName,
      status: model.status,
      isActive: model.isActive,
      config:
          _map__i9$BillerServiceConfigEntity_To__i8$BillerServiceConfigModel(
              model.config),
    );
  }

  _i9.BillerServiceConfigEntity
      _map__i8$BillerServiceConfigModel_To__i9$BillerServiceConfigEntity(
          _i8.BillerServiceConfigModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceConfigModel → BillerServiceConfigEntity failed because BillerServiceConfigModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceConfigModel, BillerServiceConfigEntity> to handle null values during mapping.');
    }
    return _i9.BillerServiceConfigEntity(
      successMessage: model.successMessage,
      requiredAmountMultiple: model.requiredAmountMultiple,
      minimumAmount: model.minimumAmount,
      formDataValue: model.formDataValue
          .map<_i11.BillerServiceFieldEntity>((value) =>
              _map__i10$BillerServiceFieldModel_To__i11$BillerServiceFieldEntity(
                  value))
          .toList(),
      allowPartialPayment: model.allowPartialPayment,
      allowMultiPayment: model.allowMultiPayment,
      isNew: model.isNew,
      feesMessage: model.feesMessage,
      relatedBillerId: model.relatedBillerId,
      feesConfig:
          _map__i4$BillerServiceFeesConfigModel_To__i5$BillerServiceFeesConfigEntity(
              model.feesConfig),
    );
  }

  _i8.BillerServiceConfigModel
      _map__i9$BillerServiceConfigEntity_To__i8$BillerServiceConfigModel(
          _i9.BillerServiceConfigEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceConfigEntity → BillerServiceConfigModel failed because BillerServiceConfigEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceConfigEntity, BillerServiceConfigModel> to handle null values during mapping.');
    }
    return _i8.BillerServiceConfigModel(
      relatedBillerId: model.relatedBillerId,
      isNew: model.isNew,
      successMessage: model.successMessage,
      feesMessage: model.feesMessage,
      requiredAmountMultiple: model.requiredAmountMultiple,
      minimumAmount: model.minimumAmount,
      formDataValue: model.formDataValue
          .map<_i10.BillerServiceFieldModel>((value) =>
              _map__i11$BillerServiceFieldEntity_To__i10$BillerServiceFieldModel(
                  value))
          .toList(),
      allowPartialPayment: model.allowPartialPayment,
      allowMultiPayment: model.allowMultiPayment,
      feesConfig:
          _map__i5$BillerServiceFeesConfigEntity_To__i4$BillerServiceFeesConfigModel(
              model.feesConfig),
    );
  }

  _i11.BillerServiceFieldEntity
      _map__i10$BillerServiceFieldModel_To__i11$BillerServiceFieldEntity(
          _i10.BillerServiceFieldModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceFieldModel → BillerServiceFieldEntity failed because BillerServiceFieldModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceFieldModel, BillerServiceFieldEntity> to handle null values during mapping.');
    }
    return _i11.BillerServiceFieldEntity(
      type: model.type,
      fieldLabel: model.fieldLabel,
      fieldSummaryLabel: model.fieldSummaryLabel,
      placeHolder: model.placeHolder,
      fieldName: model.fieldName,
      validationMessage: model.validationMessage,
      hintMessage: model.hintMessage,
      keyboard: model.keyboard,
      regex: model.regex,
      required: model.required,
      values: model.values
          .map<_i3.BillerServiceFieldSelectableItemEntity>((value) =>
              _map__i2$BillerServiceFieldSelectableItemModel_To__i3$BillerServiceFieldSelectableItemEntity(
                  value))
          .toList(),
    );
  }

  _i10.BillerServiceFieldModel
      _map__i11$BillerServiceFieldEntity_To__i10$BillerServiceFieldModel(
          _i11.BillerServiceFieldEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BillerServiceFieldEntity → BillerServiceFieldModel failed because BillerServiceFieldEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BillerServiceFieldEntity, BillerServiceFieldModel> to handle null values during mapping.');
    }
    return _i10.BillerServiceFieldModel(
      type: model.type,
      fieldLabel: model.fieldLabel,
      fieldSummaryLabel: model.fieldSummaryLabel,
      placeHolder: model.placeHolder,
      fieldName: model.fieldName,
      validationMessage: model.validationMessage,
      hintMessage: model.hintMessage,
      keyboard: model.keyboard,
      regex: model.regex,
      required: model.required,
      values: model.values
          .map<_i2.BillerServiceFieldSelectableItemModel>((value) =>
              _map__i3$BillerServiceFieldSelectableItemEntity_To__i2$BillerServiceFieldSelectableItemModel(
                  value))
          .toList(),
    );
  }

  _i13.BankServiceEntity _map__i12$BankServiceModel_To__i13$BankServiceEntity(
      _i12.BankServiceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BankServiceModel → BankServiceEntity failed because BankServiceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BankServiceModel, BankServiceEntity> to handle null values during mapping.');
    }
    return _i13.BankServiceEntity(
      id: model.id,
      name: model.name,
      code: model.code,
      market: _map__i16$MarketModel_To__i17$MarketEntity(model.market),
      hasBankAccount: model.hasBankAccount,
      iconUrl: model.iconUrl,
      extras: model.extras,
      wireAccount:
          _map__i14$WireAccountServiceModel_To__i15$BankWireAccountServiceEntity(
              model.wireAccount),
      order: model.order,
    );
  }

  _i12.BankServiceModel _map__i13$BankServiceEntity_To__i12$BankServiceModel(
      _i13.BankServiceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BankServiceEntity → BankServiceModel failed because BankServiceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BankServiceEntity, BankServiceModel> to handle null values during mapping.');
    }
    return _i12.BankServiceModel(
      id: model.id,
      name: model.name,
      code: model.code,
      market: _map__i17$MarketEntity_To__i16$MarketModel(model.market),
      hasBankAccount: model.hasBankAccount,
      iconUrl: model.iconUrl,
      extras: model.extras,
      wireAccount:
          _map__i15$BankWireAccountServiceEntity_To__i14$WireAccountServiceModel(
              model.wireAccount),
      order: model.order,
    );
  }

  _i15.BankWireAccountServiceEntity
      _map__i14$WireAccountServiceModel_To__i15$BankWireAccountServiceEntity(
          _i14.WireAccountServiceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping WireAccountServiceModel → BankWireAccountServiceEntity failed because WireAccountServiceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<WireAccountServiceModel, BankWireAccountServiceEntity> to handle null values during mapping.');
    }
    return _i15.BankWireAccountServiceEntity(
      id: model.id,
      label: model.label,
      accountHolder: model.accountHolder,
      iconUrl: model.iconUrl,
      iban: model.iban,
      extras: model.extras,
    );
  }

  _i14.WireAccountServiceModel
      _map__i15$BankWireAccountServiceEntity_To__i14$WireAccountServiceModel(
          _i15.BankWireAccountServiceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BankWireAccountServiceEntity → WireAccountServiceModel failed because BankWireAccountServiceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BankWireAccountServiceEntity, WireAccountServiceModel> to handle null values during mapping.');
    }
    return _i14.WireAccountServiceModel(
      id: model.id,
      label: model.label,
      accountHolder: model.accountHolder,
      iconUrl: model.iconUrl,
      iban: model.iban,
      extras: model.extras,
    );
  }

  _i17.MarketEntity _map__i16$MarketModel_To__i17$MarketEntity(
      _i16.MarketModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MarketModel → MarketEntity failed because MarketModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MarketModel, MarketEntity> to handle null values during mapping.');
    }
    return _i17.MarketEntity(
      id: model.id,
      name: model.name,
      isoCode: model.isoCode,
      isInProspection: model.isInProspection,
      flagUrl: model.flagUrl,
      currency: _map__i18$CurrencyModel_To__i19$CurrencyEntity(model.currency),
      extras: model.extras,
    );
  }

  _i16.MarketModel _map__i17$MarketEntity_To__i16$MarketModel(
      _i17.MarketEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MarketEntity → MarketModel failed because MarketEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MarketEntity, MarketModel> to handle null values during mapping.');
    }
    return _i16.MarketModel(
      id: model.id,
      name: model.name,
      isoCode: model.isoCode,
      isInProspection: model.isInProspection,
      flagUrl: model.flagUrl,
      currency: _map__i19$CurrencyEntity_To__i18$CurrencyModel(model.currency),
      extras: model.extras,
    );
  }

  _i19.CurrencyEntity _map__i18$CurrencyModel_To__i19$CurrencyEntity(
      _i18.CurrencyModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyModel → CurrencyEntity failed because CurrencyModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyModel, CurrencyEntity> to handle null values during mapping.');
    }
    return _i19.CurrencyEntity(
      name: model.name,
      isoCode: model.isoCode,
      formatting: model.formatting,
      symbol: model.symbol,
    );
  }

  _i18.CurrencyModel _map__i19$CurrencyEntity_To__i18$CurrencyModel(
      _i19.CurrencyEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CurrencyEntity → CurrencyModel failed because CurrencyEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CurrencyEntity, CurrencyModel> to handle null values during mapping.');
    }
    return _i18.CurrencyModel(
      name: model.name,
      isoCode: model.isoCode,
      formatting: model.formatting,
      symbol: model.symbol,
    );
  }

  _i21.ServiceEntity _map__i20$ServiceModel_To__i21$ServiceEntity(
      _i20.ServiceModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ServiceModel → ServiceEntity failed because ServiceModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ServiceModel, ServiceEntity> to handle null values during mapping.');
    }
    return _i21.ServiceEntity(
      id: model.id,
      name: model.name,
      label: model.label,
      identifier: model.identifier,
      iconUrl: model.iconUrl,
      isActive: model.isActive,
      accountTypes: model.accountTypes,
      category: model.category,
      order: model.order,
      configuration: model.configuration,
    );
  }

  _i20.ServiceModel _map__i21$ServiceEntity_To__i20$ServiceModel(
      _i21.ServiceEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ServiceEntity → ServiceModel failed because ServiceEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ServiceEntity, ServiceModel> to handle null values during mapping.');
    }
    return _i20.ServiceModel(
      id: model.id,
      name: model.name,
      label: model.label,
      identifier: model.identifier,
      iconUrl: model.iconUrl,
      isActive: model.isActive,
      accountTypes: model.accountTypes,
      category: model.category,
      order: model.order,
      configuration: model.configuration,
    );
  }
}
