import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/services/enums/biller_service_identifier_enum.dart';

class BillSummaryResponse extends BaseResponse {
  const BillSummaryResponse({
    required this.billerRefNo,
    required this.amount,
    required this.ownerLabel,
    required this.formDataValue,
  });

  factory BillSummaryResponse.fromJson(Map<String, dynamic> json) {
    return BillSummaryResponse(
      billerRefNo: DP.asString(json['billerRefNo']),
      amount: DP.asNum(json['amount']),
      ownerLabel: DP.asString(json['ownerLabel']),
      formDataValue: DP.asListOf(json['formDataValue']),
    );
  }

  factory BillSummaryResponse.reference(String billerRefNo) {
    return BillSummaryResponse(
      billerRefNo: billerRefNo,
      amount: 0,
      ownerLabel: '',
      formDataValue: const [],
    );
  }

  final String billerRefNo;
  final num amount;
  final String ownerLabel;
  final List<JsonMap> formDataValue;

  static const empty = BillSummaryResponse(
    billerRefNo: '',
    amount: 0,
    ownerLabel: '',
    formDataValue: [],
  );

  bool get isEmpty => this == empty;

  @override
  Map<String, dynamic> toJson() {
    return {
      'billerRefNo': billerRefNo,
      'amount': amount,
      'ownerLabel': ownerLabel,
      'formDataValue': formDataValue,
    };
  }

  @override
  List<Object?> get props => [
        billerRefNo,
        amount,
        ownerLabel,
        formDataValue,
      ];
}

extension BillSummaryResponseExtension on BillSummaryResponse {
  String getAccountReferenceOwnerName(BillerServiceIdentifierEnum identifier) {
    return switch (identifier) {
      BillerServiceIdentifierEnum.ciePrepaid => _getCIEPREPAIDOwnerLabel,
      BillerServiceIdentifierEnum.fer => _getFERPREPAIDOwnerLabel,
      _ => '',
    };
  }

  double getAccountCurrentBalance(BillerServiceIdentifierEnum identifier) {
    return switch (identifier) {
      BillerServiceIdentifierEnum.fer => _getFERCurrentBalance,
      BillerServiceIdentifierEnum.rapido => _getRAPIDOCurrentBalance,
      _ => 0,
    };
  }

  String get _getCIEPREPAIDOwnerLabel {
    final field = _getFieldFromFormData('content');
    if (field.isEmpty) return '';
    final customerName = DP.asString(DP.asMap(field['fieldValue']).getOrElse('customerName', () => ''));
    return customerName.split('|').firstOrDefault('');
  }

  String get _getFERPREPAIDOwnerLabel {
    final field = _getFieldFromFormData('name');
    if (field.isEmpty) return '';
    return DP.asString(field['fieldValue']);
  }

  double get _getFERCurrentBalance {
    final field = _getFieldFromFormData('BALANCE');
    return DP.asDouble(field['fieldValue']);
  }

  double get _getRAPIDOCurrentBalance {
    final field = _getFieldFromFormData('BALANCE');
    final data = DP.asMap(field['fieldValue']);
    return DP.asDouble(data['balance']);
  }

  double get getCIERPrepaidDebtBalance {
    final field = _getFieldFromFormData('arrear');
    final item = DP.asMap(field.getOrElse('item', () => <String, dynamic>{}));
    final content = DP.asMap(item.getOrElse('content', () => <String, dynamic>{}));
    return DP.asDouble(content['balance']);
  }

  JsonMap _getFieldFromFormData(String fieldName) {
    return formDataValue.firstWhere(
      (e) {
        return e.values.any((e) => e == fieldName);
      },
      orElse: () => {},
    );
  }
}
