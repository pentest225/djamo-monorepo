// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/support_article_entity.dart' as _i7;
import '../entities/support_category_entity.dart' as _i5;
import '../entities/support_section_entity.dart' as _i3;
import '../models/support_article_model.dart' as _i6;
import '../models/support_category_model.dart' as _i4;
import '../models/support_section_model.dart' as _i2;

/// {@template package:domain/src/support/_mappers/support_auto_mapper.dart}
/// Available mappings:
/// - `SupportSectionModel` → `SupportSectionEntity`.
/// - `SupportSectionEntity` → `SupportSectionModel`.
/// - `SupportCategoryModel` → `SupportCategoryEntity`.
/// - `SupportCategoryEntity` → `SupportCategoryModel`.
/// - `SupportArticleModel` → `SupportArticleEntity`.
/// - `SupportArticleEntity` → `SupportArticleModel`.
/// {@endtemplate}
class $SupportAutoMapper implements _i1.AutoMapprInterface {
  const $SupportAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.SupportSectionModel>() ||
            sourceTypeOf == _typeOf<_i2.SupportSectionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.SupportSectionEntity>() ||
            targetTypeOf == _typeOf<_i3.SupportSectionEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.SupportSectionEntity>() ||
            sourceTypeOf == _typeOf<_i3.SupportSectionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.SupportSectionModel>() ||
            targetTypeOf == _typeOf<_i2.SupportSectionModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.SupportCategoryModel>() ||
            sourceTypeOf == _typeOf<_i4.SupportCategoryModel?>()) &&
        (targetTypeOf == _typeOf<_i5.SupportCategoryEntity>() ||
            targetTypeOf == _typeOf<_i5.SupportCategoryEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.SupportCategoryEntity>() ||
            sourceTypeOf == _typeOf<_i5.SupportCategoryEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.SupportCategoryModel>() ||
            targetTypeOf == _typeOf<_i4.SupportCategoryModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.SupportArticleModel>() ||
            sourceTypeOf == _typeOf<_i6.SupportArticleModel?>()) &&
        (targetTypeOf == _typeOf<_i7.SupportArticleEntity>() ||
            targetTypeOf == _typeOf<_i7.SupportArticleEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.SupportArticleEntity>() ||
            sourceTypeOf == _typeOf<_i7.SupportArticleEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.SupportArticleModel>() ||
            targetTypeOf == _typeOf<_i6.SupportArticleModel?>())) {
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.SupportSectionModel>() ||
            sourceTypeOf == _typeOf<_i2.SupportSectionModel?>()) &&
        (targetTypeOf == _typeOf<_i3.SupportSectionEntity>() ||
            targetTypeOf == _typeOf<_i3.SupportSectionEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$SupportSectionModel_To__i3$SupportSectionEntity(
          (model as _i2.SupportSectionModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.SupportSectionEntity>() ||
            sourceTypeOf == _typeOf<_i3.SupportSectionEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.SupportSectionModel>() ||
            targetTypeOf == _typeOf<_i2.SupportSectionModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$SupportSectionEntity_To__i2$SupportSectionModel(
          (model as _i3.SupportSectionEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.SupportCategoryModel>() ||
            sourceTypeOf == _typeOf<_i4.SupportCategoryModel?>()) &&
        (targetTypeOf == _typeOf<_i5.SupportCategoryEntity>() ||
            targetTypeOf == _typeOf<_i5.SupportCategoryEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$SupportCategoryModel_To__i5$SupportCategoryEntity(
          (model as _i4.SupportCategoryModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.SupportCategoryEntity>() ||
            sourceTypeOf == _typeOf<_i5.SupportCategoryEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.SupportCategoryModel>() ||
            targetTypeOf == _typeOf<_i4.SupportCategoryModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$SupportCategoryEntity_To__i4$SupportCategoryModel(
          (model as _i5.SupportCategoryEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.SupportArticleModel>() ||
            sourceTypeOf == _typeOf<_i6.SupportArticleModel?>()) &&
        (targetTypeOf == _typeOf<_i7.SupportArticleEntity>() ||
            targetTypeOf == _typeOf<_i7.SupportArticleEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$SupportArticleModel_To__i7$SupportArticleEntity(
          (model as _i6.SupportArticleModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.SupportArticleEntity>() ||
            sourceTypeOf == _typeOf<_i7.SupportArticleEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.SupportArticleModel>() ||
            targetTypeOf == _typeOf<_i6.SupportArticleModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$SupportArticleEntity_To__i6$SupportArticleModel(
          (model as _i7.SupportArticleEntity?)) as TARGET);
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
  /// {@macro package:domain/src/support/_mappers/support_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.SupportSectionEntity
      _map__i2$SupportSectionModel_To__i3$SupportSectionEntity(
          _i2.SupportSectionModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SupportSectionModel → SupportSectionEntity failed because SupportSectionModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SupportSectionModel, SupportSectionEntity> to handle null values during mapping.');
    }
    return _i3.SupportSectionEntity(
      id: model.id,
      name: model.name,
      order: model.order,
      parentId: model.parentId,
      isExpanded: model.isExpanded,
    );
  }

  _i2.SupportSectionModel
      _map__i3$SupportSectionEntity_To__i2$SupportSectionModel(
          _i3.SupportSectionEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SupportSectionEntity → SupportSectionModel failed because SupportSectionEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SupportSectionEntity, SupportSectionModel> to handle null values during mapping.');
    }
    return _i2.SupportSectionModel(
      id: model.id,
      name: model.name,
      order: model.order,
      parentId: model.parentId,
      isExpanded: model.isExpanded,
    );
  }

  _i5.SupportCategoryEntity
      _map__i4$SupportCategoryModel_To__i5$SupportCategoryEntity(
          _i4.SupportCategoryModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SupportCategoryModel → SupportCategoryEntity failed because SupportCategoryModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SupportCategoryModel, SupportCategoryEntity> to handle null values during mapping.');
    }
    return _i5.SupportCategoryEntity(
      id: model.id,
      name: model.name,
      description: model.description,
      icon: model.icon,
      iconUrl: model.iconUrl,
      type: model.type,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      workspaceId: model.workspaceId,
      url: model.url,
      order: model.order,
    );
  }

  _i4.SupportCategoryModel
      _map__i5$SupportCategoryEntity_To__i4$SupportCategoryModel(
          _i5.SupportCategoryEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SupportCategoryEntity → SupportCategoryModel failed because SupportCategoryEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SupportCategoryEntity, SupportCategoryModel> to handle null values during mapping.');
    }
    return _i4.SupportCategoryModel(
      id: model.id,
      name: model.name,
      description: model.description,
      icon: model.icon,
      iconUrl: model.iconUrl,
      type: model.type,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      workspaceId: model.workspaceId,
      url: model.url,
      order: model.order,
    );
  }

  _i7.SupportArticleEntity
      _map__i6$SupportArticleModel_To__i7$SupportArticleEntity(
          _i6.SupportArticleModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SupportArticleModel → SupportArticleEntity failed because SupportArticleModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SupportArticleModel, SupportArticleEntity> to handle null values during mapping.');
    }
    return _i7.SupportArticleEntity(
      id: model.id,
      parentId: model.parentId,
      title: model.title,
      type: model.type,
      body: model.body,
      workspaceId: model.workspaceId,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      defaultLocale: model.defaultLocale,
      translatedContent: model.translatedContent,
      description: model.description,
      url: model.url,
      statistics: model.statistics,
    );
  }

  _i6.SupportArticleModel
      _map__i7$SupportArticleEntity_To__i6$SupportArticleModel(
          _i7.SupportArticleEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SupportArticleEntity → SupportArticleModel failed because SupportArticleEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SupportArticleEntity, SupportArticleModel> to handle null values during mapping.');
    }
    return _i6.SupportArticleModel(
      id: model.id,
      parentId: model.parentId,
      title: model.title,
      type: model.type,
      body: model.body,
      workspaceId: model.workspaceId,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      defaultLocale: model.defaultLocale,
      translatedContent: model.translatedContent,
      description: model.description,
      url: model.url,
      statistics: model.statistics,
    );
  }
}
