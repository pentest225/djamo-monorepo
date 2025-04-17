enum OrderCheckerActionEnum {
  nothing,
  shouldOrderCard,
  shouldRetrieveCardToPOS,
  shouldRetrieveCardToDeliveryAgent,
  shouldActivateCard,
  shouldRedoKYC,
  seeOrderList,
  ;
}

extension OrderCheckerActionEnumExtension on OrderCheckerActionEnum {}
