import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/invest/_mappers/invest_auto_mapper.auto_mappr.dart';
import 'package:domain/src/invest/entities/entities.dart';
import 'package:domain/src/invest/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<RecurringSubscriptionModel, RecurringSubscriptionEntity>(
    reverse: true,
  ),
  MapType<InvestCashbackModel, InvestCashbackEntity>(reverse: true),
  MapType<InvestAccountModel, InvestAccountEntity>(reverse: true),
  MapType<InvestProductBalanceModel, InvestProductBalanceEntity>(reverse: true),
  MapType<InvestSubscriptionModel, InvestSubscriptionEntity>(reverse: true),
  MapType<InvestSellingModel, InvestSellingEntity>(reverse: true),
  MapType<InvestProductModel, InvestProductEntity>(reverse: true),
  MapType<InvestProductLiquidativeModel, InvestProductLiquidativeEntity>(
    reverse: true,
  ),
  MapType<InvestProductPerformanceModel, InvestProductPerformanceEntity>(
    reverse: true,
  ),
])
class InvestAutoMapper extends $InvestAutoMapper {
  const InvestAutoMapper();
}
