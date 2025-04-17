import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/bills/_mappers/bills_auto_mapper.auto_mappr.dart';
import 'package:domain/src/bills/entities/entities.dart';
import 'package:domain/src/bills/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<BillCustomerSubscriptionReferenceModel, BillCustomerSubscriptionReferenceEntity>(reverse: true),
])
class BillsAutoMapper extends $BillsAutoMapper {
  const BillsAutoMapper();
}
