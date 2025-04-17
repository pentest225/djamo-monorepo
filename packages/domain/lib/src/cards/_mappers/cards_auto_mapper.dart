import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/cards/_mappers/cards_auto_mapper.auto_mappr.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
])
class CardsAutoMapper extends $CardsAutoMapper {
  const CardsAutoMapper();
}
