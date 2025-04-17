// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../entities/kyc_docs_required_pics_entity.dart' as _i5;
import '../entities/kyc_document_entity.dart' as _i7;
import '../entities/kyc_document_notice_entity.dart' as _i9;
import '../entities/kyc_documents_group_entity.dart' as _i3;
import '../models/kyc_docs_required_pics_model.dart' as _i4;
import '../models/kyc_document_model.dart' as _i6;
import '../models/kyc_document_notice_model.dart' as _i8;
import '../models/kyc_documents_group_model.dart' as _i2;

/// {@template package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
/// Available mappings:
/// - `KYCDocumentsGroupModel` → `KYCDocumentsGroupEntity`.
/// - `KYCDocumentsGroupEntity` → `KYCDocumentsGroupModel`.
/// - `KYCDocsRequiredPicsModel` → `KYCDocsRequiredPicsEntity`.
/// - `KYCDocsRequiredPicsEntity` → `KYCDocsRequiredPicsModel`.
/// - `KYCDocumentModel` → `KYCDocumentEntity`.
/// - `KYCDocumentEntity` → `KYCDocumentModel`.
/// - `KycDocumentNoticeModel` → `KYCDocumentNoticeEntity`.
/// - `KYCDocumentNoticeEntity` → `KycDocumentNoticeModel`.
/// {@endtemplate}
class $KycAutoMapper implements _i1.AutoMapprInterface {
  const $KycAutoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.KYCDocumentsGroupModel>() ||
            sourceTypeOf == _typeOf<_i2.KYCDocumentsGroupModel?>()) &&
        (targetTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity>() ||
            targetTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity>() ||
            sourceTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.KYCDocumentsGroupModel>() ||
            targetTypeOf == _typeOf<_i2.KYCDocumentsGroupModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel>() ||
            sourceTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel?>()) &&
        (targetTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity>() ||
            targetTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity>() ||
            sourceTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel>() ||
            targetTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.KYCDocumentModel>() ||
            sourceTypeOf == _typeOf<_i6.KYCDocumentModel?>()) &&
        (targetTypeOf == _typeOf<_i7.KYCDocumentEntity>() ||
            targetTypeOf == _typeOf<_i7.KYCDocumentEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.KYCDocumentEntity>() ||
            sourceTypeOf == _typeOf<_i7.KYCDocumentEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.KYCDocumentModel>() ||
            targetTypeOf == _typeOf<_i6.KYCDocumentModel?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.KycDocumentNoticeModel>() ||
            sourceTypeOf == _typeOf<_i8.KycDocumentNoticeModel?>()) &&
        (targetTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity>() ||
            targetTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity>() ||
            sourceTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.KycDocumentNoticeModel>() ||
            targetTypeOf == _typeOf<_i8.KycDocumentNoticeModel?>())) {
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.KYCDocumentsGroupModel>() ||
            sourceTypeOf == _typeOf<_i2.KYCDocumentsGroupModel?>()) &&
        (targetTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity>() ||
            targetTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$KYCDocumentsGroupModel_To__i3$KYCDocumentsGroupEntity(
          (model as _i2.KYCDocumentsGroupModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity>() ||
            sourceTypeOf == _typeOf<_i3.KYCDocumentsGroupEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.KYCDocumentsGroupModel>() ||
            targetTypeOf == _typeOf<_i2.KYCDocumentsGroupModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$KYCDocumentsGroupEntity_To__i2$KYCDocumentsGroupModel(
          (model as _i3.KYCDocumentsGroupEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel>() ||
            sourceTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel?>()) &&
        (targetTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity>() ||
            targetTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$KYCDocsRequiredPicsModel_To__i5$KYCDocsRequiredPicsEntity(
          (model as _i4.KYCDocsRequiredPicsModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity>() ||
            sourceTypeOf == _typeOf<_i5.KYCDocsRequiredPicsEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel>() ||
            targetTypeOf == _typeOf<_i4.KYCDocsRequiredPicsModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$KYCDocsRequiredPicsEntity_To__i4$KYCDocsRequiredPicsModel(
          (model as _i5.KYCDocsRequiredPicsEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.KYCDocumentModel>() ||
            sourceTypeOf == _typeOf<_i6.KYCDocumentModel?>()) &&
        (targetTypeOf == _typeOf<_i7.KYCDocumentEntity>() ||
            targetTypeOf == _typeOf<_i7.KYCDocumentEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$KYCDocumentModel_To__i7$KYCDocumentEntity(
          (model as _i6.KYCDocumentModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.KYCDocumentEntity>() ||
            sourceTypeOf == _typeOf<_i7.KYCDocumentEntity?>()) &&
        (targetTypeOf == _typeOf<_i6.KYCDocumentModel>() ||
            targetTypeOf == _typeOf<_i6.KYCDocumentModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$KYCDocumentEntity_To__i6$KYCDocumentModel(
          (model as _i7.KYCDocumentEntity?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.KycDocumentNoticeModel>() ||
            sourceTypeOf == _typeOf<_i8.KycDocumentNoticeModel?>()) &&
        (targetTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity>() ||
            targetTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$KycDocumentNoticeModel_To__i9$KYCDocumentNoticeEntity(
          (model as _i8.KycDocumentNoticeModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity>() ||
            sourceTypeOf == _typeOf<_i9.KYCDocumentNoticeEntity?>()) &&
        (targetTypeOf == _typeOf<_i8.KycDocumentNoticeModel>() ||
            targetTypeOf == _typeOf<_i8.KycDocumentNoticeModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$KYCDocumentNoticeEntity_To__i8$KycDocumentNoticeModel(
          (model as _i9.KYCDocumentNoticeEntity?)) as TARGET);
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
  /// {@macro package:domain/src/kyc/_mappers/kyc_auto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.KYCDocumentsGroupEntity
      _map__i2$KYCDocumentsGroupModel_To__i3$KYCDocumentsGroupEntity(
          _i2.KYCDocumentsGroupModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocumentsGroupModel → KYCDocumentsGroupEntity failed because KYCDocumentsGroupModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocumentsGroupModel, KYCDocumentsGroupEntity> to handle null values during mapping.');
    }
    return _i3.KYCDocumentsGroupEntity(
      current: model.current
          .map<_i7.KYCDocumentEntity>((value) =>
              _map__i6$KYCDocumentModel_To__i7$KYCDocumentEntity(value))
          .toList(),
      otherCountries: model.otherCountries
          .map<_i7.KYCDocumentEntity>((value) =>
              _map__i6$KYCDocumentModel_To__i7$KYCDocumentEntity(value))
          .toList(),
    );
  }

  _i2.KYCDocumentsGroupModel
      _map__i3$KYCDocumentsGroupEntity_To__i2$KYCDocumentsGroupModel(
          _i3.KYCDocumentsGroupEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocumentsGroupEntity → KYCDocumentsGroupModel failed because KYCDocumentsGroupEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocumentsGroupEntity, KYCDocumentsGroupModel> to handle null values during mapping.');
    }
    return _i2.KYCDocumentsGroupModel(
      current: model.current
          .map<_i6.KYCDocumentModel>((value) =>
              _map__i7$KYCDocumentEntity_To__i6$KYCDocumentModel(value))
          .toList(),
      otherCountries: model.otherCountries
          .map<_i6.KYCDocumentModel>((value) =>
              _map__i7$KYCDocumentEntity_To__i6$KYCDocumentModel(value))
          .toList(),
    );
  }

  _i5.KYCDocsRequiredPicsEntity
      _map__i4$KYCDocsRequiredPicsModel_To__i5$KYCDocsRequiredPicsEntity(
          _i4.KYCDocsRequiredPicsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocsRequiredPicsModel → KYCDocsRequiredPicsEntity failed because KYCDocsRequiredPicsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocsRequiredPicsModel, KYCDocsRequiredPicsEntity> to handle null values during mapping.');
    }
    return _i5.KYCDocsRequiredPicsEntity(
      id: model.id,
      name: model.name,
      hintTitle: model.hintTitle,
      hintText: model.hintText,
      subHintText: model.subHintText,
      needDetection: model.needDetection,
      format: model.format,
    );
  }

  _i4.KYCDocsRequiredPicsModel
      _map__i5$KYCDocsRequiredPicsEntity_To__i4$KYCDocsRequiredPicsModel(
          _i5.KYCDocsRequiredPicsEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocsRequiredPicsEntity → KYCDocsRequiredPicsModel failed because KYCDocsRequiredPicsEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocsRequiredPicsEntity, KYCDocsRequiredPicsModel> to handle null values during mapping.');
    }
    return _i4.KYCDocsRequiredPicsModel(
      id: model.id,
      name: model.name,
      hintTitle: model.hintTitle,
      hintText: model.hintText,
      subHintText: model.subHintText,
      needDetection: model.needDetection,
      format: model.format,
    );
  }

  _i7.KYCDocumentEntity _map__i6$KYCDocumentModel_To__i7$KYCDocumentEntity(
      _i6.KYCDocumentModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocumentModel → KYCDocumentEntity failed because KYCDocumentModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocumentModel, KYCDocumentEntity> to handle null values during mapping.');
    }
    return _i7.KYCDocumentEntity(
      id: model.id,
      name: model.name,
      requiredPics: model.requiredPics
          .map<_i5.KYCDocsRequiredPicsEntity>((value) =>
              _map__i4$KYCDocsRequiredPicsModel_To__i5$KYCDocsRequiredPicsEntity(
                  value))
          .toList(),
    );
  }

  _i6.KYCDocumentModel _map__i7$KYCDocumentEntity_To__i6$KYCDocumentModel(
      _i7.KYCDocumentEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocumentEntity → KYCDocumentModel failed because KYCDocumentEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocumentEntity, KYCDocumentModel> to handle null values during mapping.');
    }
    return _i6.KYCDocumentModel(
      id: model.id,
      name: model.name,
      requiredPics: model.requiredPics
          .map<_i4.KYCDocsRequiredPicsModel>((value) =>
              _map__i5$KYCDocsRequiredPicsEntity_To__i4$KYCDocsRequiredPicsModel(
                  value))
          .toList(),
    );
  }

  _i9.KYCDocumentNoticeEntity
      _map__i8$KycDocumentNoticeModel_To__i9$KYCDocumentNoticeEntity(
          _i8.KycDocumentNoticeModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KycDocumentNoticeModel → KYCDocumentNoticeEntity failed because KycDocumentNoticeModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KycDocumentNoticeModel, KYCDocumentNoticeEntity> to handle null values during mapping.');
    }
    return _i9.KYCDocumentNoticeEntity(
      id: model.id,
      name: model.name,
      hintTitle: model.hintTitle,
      hintText: model.hintText,
      subHintText: model.subHintText,
      needDetection: model.needDetection,
      format: model.format,
    );
  }

  _i8.KycDocumentNoticeModel
      _map__i9$KYCDocumentNoticeEntity_To__i8$KycDocumentNoticeModel(
          _i9.KYCDocumentNoticeEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping KYCDocumentNoticeEntity → KycDocumentNoticeModel failed because KYCDocumentNoticeEntity was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<KYCDocumentNoticeEntity, KycDocumentNoticeModel> to handle null values during mapping.');
    }
    return _i8.KycDocumentNoticeModel(
      id: model.id,
      name: model.name,
      hintTitle: model.hintTitle,
      hintText: model.hintText,
      subHintText: model.subHintText,
      needDetection: model.needDetection,
      format: model.format,
    );
  }
}
