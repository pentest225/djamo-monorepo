import 'package:domain/domain.dart';
import 'package:meta/meta.dart';

class BillerServiceConfigEntity extends BaseEntity {
  const BillerServiceConfigEntity({
    this.successMessage = emptyString,
    this.requiredAmountMultiple = 0,
    this.minimumAmount = 0.0,
    this.formDataValue = const [],
    this.allowPartialPayment = false,
    this.allowMultiPayment = false,
    this.isNew = false,
    this.feesMessage = emptyString,
    this.relatedBillerId = emptyString,
    this.feesConfig = BillerServiceFeesConfigEntity.empty,
  });

  final String successMessage;
  final int requiredAmountMultiple;
  final double minimumAmount;

  ///Use [fields] instead
  @internal
  final BillerServiceFieldEntities formDataValue;
  final bool allowPartialPayment;
  final bool allowMultiPayment;
  final bool isNew;
  final String feesMessage;
  final String relatedBillerId;
  final BillerServiceFeesConfigEntity feesConfig;

  static const empty = BillerServiceConfigEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object> get props => [
        successMessage,
        requiredAmountMultiple,
        minimumAmount,
        formDataValue,
        allowPartialPayment,
        allowMultiPayment,
        isNew,
        feesMessage,
        relatedBillerId,
        feesConfig,
      ];
}

extension BillerServiceConfigEntityExtension on BillerServiceConfigEntity {
  BillerServiceFieldEntities get fields {
    return formDataValue;
  }
}
