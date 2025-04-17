import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/services/entities/biller_service_field_selectable_item_entity.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:meta/meta.dart';

typedef BillerServiceFieldEntities = List<BillerServiceFieldEntity>;

typedef BillerServiceFieldSelectableItem = ({
  Object? value,
  String title,
  String subtitle,
  String formatted,
  String code,
  @internal String type,
});
//biller_service_field_selectable_item:Object? value,String title,String subtitle,String formatted,String code,String type
typedef BillerAccountNumberValidLength = ({int? min, int? max});

typedef BillerAccountReferenceValidLengths = List<BillerAccountNumberValidLength>;

typedef BillerServiceFieldSelectableItems = List<BillerServiceFieldSelectableItem>;

class BillerServiceFieldEntity extends BaseEntity {
  const BillerServiceFieldEntity({
    this.type = emptyString,
    this.fieldLabel = emptyString,
    this.fieldSummaryLabel = emptyString,
    this.placeHolder = emptyString,
    this.fieldName = emptyString,
    this.validationMessage = emptyString,
    this.hintMessage = emptyString,
    this.keyboard = emptyString,
    this.regex = emptyString,
    this.required = false,
    this.values = const [],
  });

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

  ///Mainly for dropdown and selectable fields
  ///It is a list of values that can be selected.
  ///Will be empty for other field types.
  final BillerServiceFieldSelectableItemEntities values;

  static const empty = BillerServiceFieldEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        type,
        fieldLabel,
        fieldSummaryLabel,
        placeHolder,
        fieldName,
        regex,
        required,
      ];
}

extension BillerServiceFieldEntityExtension on BillerServiceFieldEntity {
  BillerServiceFieldTypeEnum get getType {
    return BillerServiceFieldTypeEnum.fromIdentifier(type);
  }

  String get getFieldName {
    return switch (getType) {
      BillerServiceFieldTypeEnum.accountReference => 'smartCardOrMeterId',
      _ => fieldName,
    };
  }

  ///Returns a list of selectable items for dropdown and selectable fields
  BillerServiceFieldSelectableItemEntities get items {
    return values;
  }

  ///Returns a list of valid lengths for the account reference field
  BillerAccountReferenceValidLengths get getAccountReferenceValidLengths {
    if (!getType.isAccountReference) return [];
    final pattern = regex;
    final quantifierRegex = RegExp(r'{(\d+)(,(\d+))?}');
    final quantifierMatches = quantifierRegex.allMatches(pattern);
    final result = <BillerAccountNumberValidLength>[];
    if (quantifierMatches.isEmpty) {
      return [];
    }
    for (final match in quantifierMatches) {
      final v = pattern.substring(match.start, match.end).replaceFirst('{', '').replaceFirst('}', '').trim();
      final containComa = v.contains(',');
      if (!containComa) {
        result.add((min: null, max: int.tryParse(v)));
        continue;
      }
      final splitByComa = v.split(',');
      if (splitByComa.length == 1) {
        result.add((min: int.tryParse(splitByComa.first), max: null));
        continue;
      }
      result.add((min: int.tryParse(splitByComa.first), max: int.tryParse(splitByComa.last)));
    }
    return result;
  }

  int? get getAccountReferenceMaxLengthAllowed {
    return getAccountReferenceValidLengths.reduce((p, n) {
      if (p.max != null) {
        return p.max! > n.max! ? p : n;
      }
      return n;
    }).max;
  }

  bool hasMatch(String input) {
    final pattern = regex;
    final r = RegExp(pattern);
    return r.hasMatch(input);
  }

  bool get isSubscriptionRenewalFormulasField {
    return fieldName == 'formulas' || fieldName == 'amount';
  }

  bool get isSubscriptionRenewalDurationField {
    return fieldName == 'duration';
  }

  bool get isAmountField {
    return fieldName == 'amount';
  }

  bool get isActionField {
    return fieldName == 'action';
  }
}

extension BillerServiceFieldSelectableItemX on BillerServiceFieldSelectableItem {
  bool get isAmount {
    return type == 'amount';
  }

  bool get isMultiplier {
    return type == 'multiplier';
  }

  num get valueAsNum {
    return DP.asNum(value);
  }

  String get valueAsString {
    return DP.asString(value);
  }
}
