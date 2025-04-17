import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/common/entities/entities.dart';
import 'package:domain/src/common/models/models.dart';
import 'package:domain/src/markets/_mappers/markets_auto_mapper.auto_mappr.dart';
import 'package:domain/src/markets/entities/entities.dart';
import 'package:domain/src/markets/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
  //##Add MapType here
  MapType<MarketModel, MarketEntity>(reverse: true),
  MapType<CurrencyModel, CurrencyEntity>(reverse: true),
  MapType<PositionModel, PositionEntity>(reverse: true),
  MapType<LocationModel, LocationEntity>(reverse: true),
  MapType<CityModel, CityEntity>(reverse: true),
  MapType<CountryModel, CountryEntity>(reverse: true),
])
class MarketsAutoMapper extends $MarketsAutoMapper {
  const MarketsAutoMapper();
}
