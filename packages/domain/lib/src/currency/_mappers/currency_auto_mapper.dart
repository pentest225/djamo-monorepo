import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//

import 'package:domain/src/currency/_mappers/currency_auto_mapper.auto_mappr.dart';
import 'package:domain/src/currency/entities/entities.dart';
import 'package:domain/src/currency/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<CurrencyConversionModel, CurrencyConvertionEntity>(reverse: true),
  MapType<FxRateModel, FxRateEntity>(reverse: true),
])
class CurrencyAutoMapper extends $CurrencyAutoMapper {
  const CurrencyAutoMapper();
}
