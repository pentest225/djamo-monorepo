// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/event_entity.dart' as _i5;
import '../entities/tooltip_message_entity.dart' as _i3;
import '../models/event_model.dart' as _i4;
import '../models/tooltip_message_model.dart' as _i2;

/// {@template package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
/// Available mappings:
/// - `TooltipMessageModel` → `TooltipMessageEntity`.
/// - `TooltipMessageEntity` → `TooltipMessageModel`.
/// - `EventModel` → `EventEntity`.
/// - `EventEntity` → `EventModel`.
/// {@endtemplate}
class $MessagingHubAutoMapper implements _i1.AutoMapprInterface {
  const $MessagingHubAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.TooltipMessageModel>() ||
            sourceTypeOf == _typeOf<_i2.TooltipMessageModel?>()) &&
        (targetTypeOf == _typeOf<_i3.TooltipMessageEntity>() ||
            targetTypeOf == _typeOf<_i3.TooltipMessageEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.TooltipMessageEntity>() ||
            sourceTypeOf == _typeOf<_i3.TooltipMessageEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.TooltipMessageModel>() ||
            targetTypeOf == _typeOf<_i2.TooltipMessageModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.EventModel>() ||
            sourceTypeOf == _typeOf<_i4.EventModel?>()) &&
        (targetTypeOf == _typeOf<_i5.EventEntity>() ||
            targetTypeOf == _typeOf<_i5.EventEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.EventEntity>() ||
            sourceTypeOf == _typeOf<_i5.EventEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.EventModel>() ||
            targetTypeOf == _typeOf<_i4.EventModel?>())) {
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.TooltipMessageModel>() ||
            sourceTypeOf == _typeOf<_i2.TooltipMessageModel?>()) &&
        (targetTypeOf == _typeOf<_i3.TooltipMessageEntity>() ||
            targetTypeOf == _typeOf<_i3.TooltipMessageEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$TooltipMessageModel_To__i3$TooltipMessageEntity(
          (model as _i2.TooltipMessageModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.TooltipMessageEntity>() ||
            sourceTypeOf == _typeOf<_i3.TooltipMessageEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.TooltipMessageModel>() ||
            targetTypeOf == _typeOf<_i2.TooltipMessageModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$TooltipMessageEntity_To__i2$TooltipMessageModel(
          (model as _i3.TooltipMessageEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.EventModel>() ||
            sourceTypeOf == _typeOf<_i4.EventModel?>()) &&
        (targetTypeOf == _typeOf<_i5.EventEntity>() ||
            targetTypeOf == _typeOf<_i5.EventEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$EventModel_To__i5$EventEntity((model as _i4.EventModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.EventEntity>() ||
            sourceTypeOf == _typeOf<_i5.EventEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.EventModel>() ||
            targetTypeOf == _typeOf<_i4.EventModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$EventEntity_To__i4$EventModel(
          (model as _i5.EventEntity?)) as TARGET);
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
  /// {@macro package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.TooltipMessageEntity
      _map__i2$TooltipMessageModel_To__i3$TooltipMessageEntity(
          _i2.TooltipMessageModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TooltipMessageModel → TooltipMessageEntity failed because TooltipMessageModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TooltipMessageModel, TooltipMessageEntity> to handle null values during mapping.');
    }
    return _i3.TooltipMessageEntity(
      id: model.id,
      order: model.order,
      status: model.status,
      title: model.title,
      content: model.content,
      iconUrl: model.iconUrl,
      actionType: model.actionType,
      actionLink: model.actionLink,
      hidden: model.hidden,
      config: model.config,
    );
  }

  _i2.TooltipMessageModel
      _map__i3$TooltipMessageEntity_To__i2$TooltipMessageModel(
          _i3.TooltipMessageEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TooltipMessageEntity → TooltipMessageModel failed because TooltipMessageEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TooltipMessageEntity, TooltipMessageModel> to handle null values during mapping.');
    }
    return _i2.TooltipMessageModel(
      id: model.id,
      order: model.order,
      status: model.status,
      title: model.title,
      content: model.content,
      iconUrl: model.iconUrl,
      actionType: model.actionType,
      actionLink: model.actionLink,
      hidden: model.hidden,
      config: model.config,
    );
  }

  _i5.EventEntity _map__i4$EventModel_To__i5$EventEntity(
      _i4.EventModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping EventModel → EventEntity failed because EventModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<EventModel, EventEntity> to handle null values during mapping.');
    }
    return _i5.EventEntity(
      type: model.type,
      subscriptionType: model.subscriptionType,
      source: model.source,
      resourceId: model.resourceId,
      timestamp: model.timestamp,
    );
  }

  _i4.EventModel _map__i5$EventEntity_To__i4$EventModel(
      _i5.EventEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping EventEntity → EventModel failed because EventEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<EventEntity, EventModel> to handle null values during mapping.');
    }
    return _i4.EventModel(
      type: model.type,
      subscriptionType: model.subscriptionType,
      source: model.source,
      resourceId: model.resourceId,
      timestamp: model.timestamp,
    );
  }
}
