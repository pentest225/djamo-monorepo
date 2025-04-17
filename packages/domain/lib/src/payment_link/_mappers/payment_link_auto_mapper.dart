import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/payment_link/_mappers/payment_link_auto_mapper.auto_mappr.dart';
import 'package:domain/src/payment_link/entities/entities.dart';
import 'package:domain/src/payment_link/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<PaymentLinkTransactionModel, PaymentLinkTransactionEntity>(
    reverse: true,
  ),
  MapType<ChargeModel, ChargeEntity>(reverse: true),
  MapType<FeesModel, FeesEntity>(reverse: true),
  MapType<CompanyModel, CompanyEntity>(reverse: true),
])
class PaymentLinkAutoMapper extends $PaymentLinkAutoMapper {
  const PaymentLinkAutoMapper();
}
