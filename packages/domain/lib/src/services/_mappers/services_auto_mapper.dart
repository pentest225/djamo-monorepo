import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/common/entities/entities.dart';
import 'package:domain/src/common/models/models.dart';
import 'package:domain/src/markets/entities/entities.dart';
import 'package:domain/src/markets/models/models.dart';
//
import 'package:domain/src/services/_mappers/services_auto_mapper.auto_mappr.dart';
import 'package:domain/src/services/entities/entities.dart';
import 'package:domain/src/services/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<BillerServiceFieldSelectableItemModel, BillerServiceFieldSelectableItemEntity>(reverse: true),
  MapType<BillerServiceFeesConfigModel, BillerServiceFeesConfigEntity>(
    reverse: true,
  ),
  MapType<BillerServiceModel, BillerServiceEntity>(reverse: true),
  MapType<BillerServiceConfigModel, BillerServiceConfigEntity>(reverse: true),
  MapType<BillerServiceFieldModel, BillerServiceFieldEntity>(reverse: true),
  MapType<BankServiceModel, BankServiceEntity>(reverse: true),
  MapType<WireAccountServiceModel, BankWireAccountServiceEntity>(reverse: true),
  MapType<MarketModel, MarketEntity>(reverse: true),
  MapType<CurrencyModel, CurrencyEntity>(reverse: true),
  MapType<ServiceModel, ServiceEntity>(reverse: true),
])
class ServicesAutoMapper extends $ServicesAutoMapper {
  const ServicesAutoMapper();
}
