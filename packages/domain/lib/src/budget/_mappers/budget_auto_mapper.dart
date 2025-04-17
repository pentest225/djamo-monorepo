import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/budget/_mappers/budget_auto_mapper.auto_mappr.dart';
import 'package:domain/src/budget/entities/entities.dart';
import 'package:domain/src/budget/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<BudgetModel, BudgetEntity>(reverse: true),
])
class BudgetAutoMapper extends $BudgetAutoMapper {
  const BudgetAutoMapper();
}
