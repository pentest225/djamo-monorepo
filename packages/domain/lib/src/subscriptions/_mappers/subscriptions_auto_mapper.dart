import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:domain/src/subscriptions/_mappers/subscriptions_auto_mapper.auto_mappr.dart';
import 'package:domain/src/subscriptions/entities/entities.dart';
import 'package:domain/src/subscriptions/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<PaymentSubscriptionModel, PaymentSubscriptionEntity>(reverse: true),
])
class SubscriptionsAutoMapper extends $SubscriptionsAutoMapper {
  const SubscriptionsAutoMapper();
}
