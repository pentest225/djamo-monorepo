import 'package:collection/collection.dart';
import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/helpers/dynamic_parser.dart';
import 'package:domain/src/_core/types/types.dart';
import 'package:equatable/equatable.dart';

typedef FormPageObjects = List<FormPageObject>;

class FormPageObject extends Equatable {
  const FormPageObject({
    this.page = 0,
    this.info = '',
    this.key = '',
    this.fields = const [],
  });

  factory FormPageObject.fromJson(Map<String, dynamic> json) {
    return FormPageObject(
      page: DP.asInt(json['page']),
      info: DP.asString(json['info']),
      key: DP.asString(json['key']),
      fields: DP.asListOf<JsonMap>(json['fields']).map(FormFieldObject.fromJson).toList(),
    );
  }

  final int page;
  final String info;
  final String key;
  final List<FormFieldObject> fields;

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'info': info,
      'key': key,
      'fields': fields.map((x) => x.toJson()).toList(),
    };
  }

  @override
  List<Object> get props => [page, info, fields, key];
}

class FormFieldObject extends Equatable {
  const FormFieldObject({
    this.type = FormFieldTypeEnum.none,
    this.title = '',
    this.key = '',
    this.question = '',
    this.subFieldKeys = const [],
    this.required = true,
    this.precisions = const [],
    this.answers = const [],
    this.placeholder,
    this.showFor = const {},
  });

  factory FormFieldObject.fromJson(Map<String, dynamic> json) {
    final rawShow = Map<String, List<dynamic>>.from(DP.asMap(json['showFor']));
    final show = rawShow.map((key, value) => MapEntry(key, value.map((e) => e.toString()).toList()));
    return FormFieldObject(
      type: FormFieldTypeEnum.fromString(DP.asString(json['type'])),
      title: DP.asString(json['title']),
      key: DP.asString(json['key']),
      subFieldKeys: DP.asListOf<String>(json['subFieldKeys']),
      question: DP.asString(json['question']),
      required: DP.asBool(json['required'], defaultValue: true),
      precisions: DP.asListOf<JsonMap>(json['precisions']).map(FormPrecisionOptObject.fromJson).toList(),
      answers: DP.asListOf<JsonMap>(json['answers']).map(FormAnswerObject.fromJson).toList(),
      placeholder: json['placeholder'] != null ? DP.asString(json['placeholder']) : null,
      showFor: show,
    );
  }

  final FormFieldTypeEnum type;
  final String title;
  final String key;
  final String question;
  final List<String> subFieldKeys;
  final String? placeholder;
  final bool required;
  final List<FormPrecisionOptObject> precisions;
  final List<FormAnswerObject> answers;
  final Map<String, List<String>> showFor;

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'title': title,
      'key': key,
      'subFieldKeys': subFieldKeys,
      'question': question,
      'placeholder': placeholder,
      'required': required,
      'precisions': precisions.map((x) => x.toJson()).toList(),
      'answers': answers.map((x) => x.toJson()).toList(),
    };
  }

  bool needPrecision(String on) {
    if (on.isEmpty) {
      return false;
    }
    return getPrecision.on == on;
  }

  FormPrecisionOptObject get getPrecision {
    return precisions.firstOrDefault(const FormPrecisionOptObject());
  }

  @override
  List<Object?> get props => [
        type,
        title,
        key,
        subFieldKeys,
        placeholder,
        question,
        required,
        precisions,
        answers,
      ];
}

enum FormFieldTypeEnum {
  none._('none'),
  oneChoice._('one-choice'),
  multiChoices._('multi-choices'),
  boolean._('boolean'),
  dropdown._('dropdown'),
  textField._('text-field'),
  checkbox._('checkbox'),
  cgu._('cgu');

  const FormFieldTypeEnum._(this.key);

  factory FormFieldTypeEnum.fromString(String key) {
    return FormFieldTypeEnum.values.firstWhereOrNull((e) {
          return e.key == key;
        }) ??
        FormFieldTypeEnum.none;
  }

  final String key;

  bool get isDropdown {
    return this == FormFieldTypeEnum.dropdown;
  }

  bool get isTextField {
    return this == FormFieldTypeEnum.textField;
  }

  bool get isMultiChoice {
    return this == FormFieldTypeEnum.multiChoices;
  }
}

class FormAnswerObject extends Equatable {
  const FormAnswerObject({
    this.id = '',
    this.label = '',
    this.facing = '',
  });

  factory FormAnswerObject.fromJson(Map<String, dynamic> json) {
    return FormAnswerObject(
      id: DP.asString(json['id']),
      label: DP.asString(json['label']),
      facing: DP.asString(json['facing']),
    );
  }

  factory FormAnswerObject.na() {
    return const FormAnswerObject(id: 'na', label: 'N/A');
  }

  final String id;
  final String label;
  final String facing;

  String get getLabel {
    if (facing.isNotEmpty) {
      return facing;
    }
    return label;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'facing': facing,
    };
  }

  @override
  List<Object> get props => [id, label];
}

class FormPrecisionOptObject extends Equatable {
  const FormPrecisionOptObject({
    this.on = '',
    this.placeholder = '',
  });

  factory FormPrecisionOptObject.fromJson(Map<String, dynamic> json) {
    return FormPrecisionOptObject(
      on: DP.asString(json['on']),
      placeholder: DP.asString(json['placeholder']),
    );
  }

  final String on;
  final String placeholder;

  Map<String, dynamic> toJson() {
    return {
      'on': on,
      'placeholder': placeholder,
    };
  }

  @override
  List<Object> get props => [placeholder];
}
