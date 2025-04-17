import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
//
import 'package:domain/src/messaging_hub/_mappers/messaging_hub_auto_mapper.auto_mappr.dart';
import 'package:domain/src/messaging_hub/entities/entities.dart';
import 'package:domain/src/messaging_hub/models/models.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoMappr([
//##Add MapType here
  MapType<TooltipMessageModel, TooltipMessageEntity>(reverse: true),
  MapType<EventModel, EventEntity>(reverse: true),
])
class MessagingHubAutoMapper extends $MessagingHubAutoMapper {
  const MessagingHubAutoMapper();
}
