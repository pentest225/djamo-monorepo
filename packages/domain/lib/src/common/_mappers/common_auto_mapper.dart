import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/common/_mappers/common_auto_mapper.auto_mappr.dart';
import 'package:domain/src/common/entities/entities.dart';
import 'package:domain/src/common/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
  //##Add MapType here
  MapType<TransactionFeeModel, TransactionFeeEntity>(reverse: true),
  MapType<CurrencyModel, CurrencyEntity>(reverse: true),
])
class CommonAutoMapper extends $CommonAutoMapper {
  const CommonAutoMapper();
}
