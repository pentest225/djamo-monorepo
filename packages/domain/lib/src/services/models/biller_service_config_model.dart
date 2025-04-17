import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/services/models/biller_service_fees_config_model.dart';
import 'package:domain/src/services/models/biller_service_field_model.dart';

class BillerServiceConfigModel extends BaseModel {
  const BillerServiceConfigModel({
    required this.relatedBillerId,
    required this.isNew,
    required this.successMessage,
    required this.feesMessage,
    required this.requiredAmountMultiple,
    required this.minimumAmount,
    required this.formDataValue,
    required this.allowPartialPayment,
    required this.allowMultiPayment,
    required this.feesConfig,
  });

  factory BillerServiceConfigModel.fromJson(Map<String, dynamic> json) {
    return BillerServiceConfigModel(
      relatedBillerId: DP.asString(json['related_biller_id']),
      isNew: DP.asBool(json['isNew']),
      successMessage: DP.asString(json['success_message']),
      feesMessage: DP.asString(json['fees_message']),
      requiredAmountMultiple: DP.asInt(json['required_amount_multiple']),
      minimumAmount: DP.asDouble(json['minimum_amount']),
      formDataValue: DP.asListOf<JsonMap>(json['form_data_value']).map(BillerServiceFieldModel.fromJson).toList(),
      allowPartialPayment: DP.asBool(json['allowPartialPayment']),
      allowMultiPayment: DP.asBool(json['allowMultiPayment']),
      feesConfig: BillerServiceFeesConfigModel.fromJson(DP.asMap(json['fees_config'])),
    );
  }

  final bool isNew;
  final String successMessage;
  final String feesMessage;
  final String relatedBillerId;
  final int requiredAmountMultiple;
  final double minimumAmount;
  final BillerServiceFieldModels formDataValue;
  final bool allowPartialPayment;
  final bool allowMultiPayment;
  final BillerServiceFeesConfigModel feesConfig;

  @override
  Map<String, dynamic> toJson() {
    return {
      'related_biller_id': relatedBillerId,
      'isNew': isNew,
      'fees_message': feesMessage,
      'success_message': successMessage,
      'required_amount_multiple': requiredAmountMultiple,
      'minimum_amount': minimumAmount,
      'form_data_value': formDataValue.map((e) => e.toJson()).toList(),
      'allowPartialPayment': allowPartialPayment,
      'allowMultiPayment': allowMultiPayment,
      'fees_config': feesConfig.toJson(),
    };
  }

  @override
  List<Object> get props => [
        isNew,
        successMessage,
        feesMessage,
        relatedBillerId,
        requiredAmountMultiple,
        minimumAmount,
        formDataValue,
        allowPartialPayment,
        allowMultiPayment,
        feesConfig,
      ];
}

extension BillerServiceConfigModelExtension on BillerServiceConfigModel {}
