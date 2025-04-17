import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/transfer/_mappers/transfer_auto_mapper.auto_mappr.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
])
class TransferAutoMapper extends $TransferAutoMapper {
  const TransferAutoMapper();
}
