import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/services/models/biller_service_field_selectable_item_model.dart';
import 'package:meta/meta.dart';

typedef BillerServiceFieldModels = List<BillerServiceFieldModel>;

class BillerServiceFieldModel extends BaseModel {
  const BillerServiceFieldModel({
    required this.type,
    required this.fieldLabel,
    required this.fieldSummaryLabel,
    required this.placeHolder,
    required this.fieldName,
    required this.validationMessage,
    required this.hintMessage,
    required this.keyboard,
    required this.regex,
    required this.required,
    required this.values,
  });

  factory BillerServiceFieldModel.fromJson(Map<String, dynamic> json) {
    return BillerServiceFieldModel(
      type: DP.asString(json['type']),
      fieldLabel: DP.asString(json['field_label']),
      fieldSummaryLabel: DP.asString(json['field_summary_label']),
      placeHolder: DP.asString(json['placeholder']),
      fieldName: DP.asString(json['field_name']),
      validationMessage: DP.asString(json['validation_message']),
      hintMessage: DP.asString(json['hint_message']),
      keyboard: DP.asString(json['keyboard']),
      regex: DP.asString(json['regex']),
      required: DP.asBool(json['required']),
      values: DP.asListOf<JsonMap>(json['values']).map(BillerServiceFieldSelectableItemModel.fromJson).toList(),
    );
  }

  @internal
  final String type;
  final String fieldLabel;
  final String fieldSummaryLabel;
  final String placeHolder;
  final String fieldName;
  final String validationMessage;
  final String hintMessage;
  final String keyboard;
  final String regex;
  final bool required;
  final BillerServiceFieldSelectableItemModels values;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'field_label': fieldLabel,
      'field_summary_label': fieldSummaryLabel,
      'validation_message': validationMessage,
      'hint_message': hintMessage,
      'placeholder': placeHolder,
      'field_name': fieldName,
      'regex': regex,
      'required': required,
      'keyboard': keyboard,
      'values': values.map((m) => m.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
        type,
        fieldLabel,
        fieldSummaryLabel,
        placeHolder,
        fieldName,
        validationMessage,
        hintMessage,
        keyboard,
        regex,
        required,
      ];
}

extension BillerServiceFieldModelExtension on BillerServiceFieldModel {}
