import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/airtime/_mappers/airtime_auto_mapper.auto_mappr.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
])
class AirtimeAutoMapper extends $AirtimeAutoMapper {
  const AirtimeAutoMapper();
}
