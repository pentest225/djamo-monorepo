import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/me/_mappers/me_auto_mapper.auto_mappr.dart';
import 'package:domain/src/me/entities/entities.dart';
import 'package:domain/src/me/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<DocumentModel, DocumentEntity>(reverse: true),
])
class MeAutoMapper extends $MeAutoMapper {
  const MeAutoMapper();
}
