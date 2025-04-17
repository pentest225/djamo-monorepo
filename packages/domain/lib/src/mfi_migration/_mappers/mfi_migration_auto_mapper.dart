import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/mfi_migration/_mappers/mfi_migration_auto_mapper.auto_mappr.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
])
class MfiMigrationAutoMapper extends $MfiMigrationAutoMapper {
  const MfiMigrationAutoMapper();
}
