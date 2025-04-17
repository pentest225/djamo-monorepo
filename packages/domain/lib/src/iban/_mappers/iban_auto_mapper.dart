import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/iban/_mappers/iban_auto_mapper.auto_mappr.dart';
import 'package:domain/src/iban/entities/entities.dart';
import 'package:domain/src/iban/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<IbanModel, IbanEntity>(reverse: true),
  MapType<IbanAgencyModel, IbanAgencyEntity>(reverse: true),
])
class IbanAutoMapper extends $IbanAutoMapper {
  const IbanAutoMapper();
}
