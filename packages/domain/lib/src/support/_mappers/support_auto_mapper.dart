import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/support/_mappers/support_auto_mapper.auto_mappr.dart';
import 'package:domain/src/support/entities/entities.dart';
import 'package:domain/src/support/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<SupportSectionModel, SupportSectionEntity>(reverse: true),
  MapType<SupportCategoryModel, SupportCategoryEntity>(reverse: true),
  MapType<SupportArticleModel, SupportArticleEntity>(reverse: true),
])
class SupportAutoMapper extends $SupportAutoMapper {
  const SupportAutoMapper();
}
