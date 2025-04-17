import 'package:domain/src/_core/helpers/helpers.dart';
import 'package:domain/src/me/enums/profile_tooltip_type_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

typedef TooltipBannerObjects = List<TooltipBannerObject>;

class TooltipBannerObject extends Equatable {
  @internal
  const TooltipBannerObject({
    required this.type,
    required this.profileTooltipType,
    this.tooltipId,
    this.title,
    this.content,
    this.iconUrl,
  });

  factory TooltipBannerObject.fromJson(Map<String, dynamic> json) {
    return TooltipBannerObject(
      type: TooltipBannerType.values.elementAt(DP.asInt(json['type'])),
      profileTooltipType: ProfileTooltipTypeEnum.values.elementAt(DP.asInt(json['profileTooltipType'])),
      tooltipId: DP.asString(json['tooltipId']),
      title: DP.asString(json['title']),
      content: DP.asString(json['content']),
      iconUrl: DP.asString(json['iconUrl']),
    );
  }

  factory TooltipBannerObject.freeDeposit() {
    return TooltipBannerObject(
      tooltipId: ProfileTooltipTypeEnum.freeDeposit.name,
      type: TooltipBannerType.success,
      profileTooltipType: ProfileTooltipTypeEnum.freeDeposit,
    );
  }

  factory TooltipBannerObject.freeTransfer() {
    return TooltipBannerObject(
      tooltipId: ProfileTooltipTypeEnum.freeTransfer.name,
      type: TooltipBannerType.success,
      profileTooltipType: ProfileTooltipTypeEnum.freeTransfer,
    );
  }

  factory TooltipBannerObject.freeCashback() {
    return TooltipBannerObject(
      tooltipId: ProfileTooltipTypeEnum.freeCashback.name,
      type: TooltipBannerType.success,
      profileTooltipType: ProfileTooltipTypeEnum.freeCashback,
    );
  }

  factory TooltipBannerObject.freePremiumSubscription() {
    return TooltipBannerObject(
      tooltipId: ProfileTooltipTypeEnum.freePremiumSubscription.name,
      type: TooltipBannerType.success,
      profileTooltipType: ProfileTooltipTypeEnum.freePremiumSubscription,
    );
  }

  factory TooltipBannerObject.appUpdate() => const TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: ProfileTooltipTypeEnum.appUpdate,
      );

  factory TooltipBannerObject.kycRejected() => const TooltipBannerObject(
        type: TooltipBannerType.error,
        profileTooltipType: ProfileTooltipTypeEnum.kycRejected,
      );

  factory TooltipBannerObject.pendingCredit({required double balance}) => TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: ProfileTooltipTypeEnum.pendingCredit,
        content: balance.toString(),
      );

  factory TooltipBannerObject.helpFromAgentForKYC() => const TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: ProfileTooltipTypeEnum.helpFromAgentForKYC,
      );

  factory TooltipBannerObject.orderPhysicalCard() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.orderPhysicalCard,
      );

  factory TooltipBannerObject.increaseVCCeiling() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.increaseVCCeiling,
      );

  factory TooltipBannerObject.linkYourCard() => const TooltipBannerObject(
        type: TooltipBannerType.success,
        profileTooltipType: ProfileTooltipTypeEnum.linkYourCard,
      );

  factory TooltipBannerObject.pendingOrder() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.pendingOrder,
      );

  factory TooltipBannerObject.failedDeliveryOrder() => const TooltipBannerObject(
        type: TooltipBannerType.error,
        profileTooltipType: ProfileTooltipTypeEnum.failedDeliveryOrder,
      );

  factory TooltipBannerObject.collectYourCardNow() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.collectYourCardNow,
      );

  factory TooltipBannerObject.readyForPickupOrder() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.readyForPickupOrder,
      );

  factory TooltipBannerObject.preferDeliveryOrder() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.preferDeliveryOrder,
      );

  factory TooltipBannerObject.pendingDeliveryOrder() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.pendingDeliveryOrder,
      );

  factory TooltipBannerObject.verifyYourIdentity() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.verifyYourIdentity,
      );

  factory TooltipBannerObject.loanDueSoon() => const TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: ProfileTooltipTypeEnum.loanDueSoon,
      );

  factory TooltipBannerObject.loanGranted() => const TooltipBannerObject(
        type: TooltipBannerType.success,
        profileTooltipType: ProfileTooltipTypeEnum.loanGranted,
      );

  factory TooltipBannerObject.loanPastDue() => const TooltipBannerObject(
        type: TooltipBannerType.error,
        profileTooltipType: ProfileTooltipTypeEnum.loanPastDue,
      );

  factory TooltipBannerObject.paymentSubscriptionReminder() => const TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: ProfileTooltipTypeEnum.paymentSubscriptionReminder,
      );

  factory TooltipBannerObject.vsmSubscriptionPaymentBlocked() => const TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: ProfileTooltipTypeEnum.vsmSubscriptionPaymentBlocked,
      );

  factory TooltipBannerObject.cardDestroyed({
    required bool isPhysicalCard,
    required int nsfCount,
  }) =>
      TooltipBannerObject(
        type: TooltipBannerType.warning,
        profileTooltipType: isPhysicalCard ? ProfileTooltipTypeEnum.physicalCardDestroyed : ProfileTooltipTypeEnum.virtualCardDestroyed,
        content: nsfCount.toRadixString(10),
      );

  factory TooltipBannerObject.cardExpiration({
    required int daysLeftUntilExpiration,
  }) =>
      TooltipBannerObject(
        type: TooltipBannerType.error,
        profileTooltipType: ProfileTooltipTypeEnum.cardExpiration,
        content: daysLeftUntilExpiration.toString(),
      );

  factory TooltipBannerObject.virtualCardRestored() => const TooltipBannerObject(
        type: TooltipBannerType.info,
        profileTooltipType: ProfileTooltipTypeEnum.virtualCardRecreated,
      );

  factory TooltipBannerObject.errorTooltip({
    required String tooltipId,
    required String title,
    required String content,
    required String iconUrl,
  }) {
    return TooltipBannerObject(
      tooltipId: tooltipId,
      type: TooltipBannerType.error,
      profileTooltipType: ProfileTooltipTypeEnum.none,
      title: title,
      content: content,
      iconUrl: iconUrl,
    );
  }

  factory TooltipBannerObject.infoTooltip({
    required String tooltipId,
    required String title,
    required String content,
    required String iconUrl,
  }) {
    return TooltipBannerObject(
      tooltipId: tooltipId,
      type: TooltipBannerType.info,
      profileTooltipType: ProfileTooltipTypeEnum.none,
      title: title,
      content: content,
      iconUrl: iconUrl,
    );
  }

  factory TooltipBannerObject.successTooltip({
    required String tooltipId,
    required String title,
    required String content,
    required String iconUrl,
  }) {
    return TooltipBannerObject(
      tooltipId: tooltipId,
      type: TooltipBannerType.success,
      profileTooltipType: ProfileTooltipTypeEnum.none,
      title: title,
      content: content,
      iconUrl: iconUrl,
    );
  }

  factory TooltipBannerObject.warningTooltip({
    required String tooltipId,
    required String title,
    required String content,
    required String iconUrl,
  }) {
    return TooltipBannerObject(
      tooltipId: tooltipId,
      type: TooltipBannerType.warning,
      profileTooltipType: ProfileTooltipTypeEnum.none,
      title: title,
      content: content,
      iconUrl: iconUrl,
    );
  }

  final TooltipBannerType type;
  final ProfileTooltipTypeEnum profileTooltipType;
  final String? tooltipId;
  final String? title;
  final String? content;
  final String? iconUrl;

  Map<String, dynamic> toJson() {
    return {
      'type': type.index,
      'profileTooltipType': profileTooltipType.index,
      'tooltipId': tooltipId,
      'title': title,
      'content': content,
      'iconUrl': iconUrl,
    };
  }

  @override
  List<Object?> get props => [
        type,
        profileTooltipType,
        tooltipId,
        title,
        content,
        iconUrl,
      ];
}

enum TooltipBannerType {
  info,
  success,
  warning,
  error,
}
