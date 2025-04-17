import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/messaging_hub/enums/enums.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:domain/src/settings/enums/enums.dart';

typedef TooltipMessageEntities = List<TooltipMessageEntity>;

class TooltipMessageEntity extends BaseEntity {
  const TooltipMessageEntity({
    this.id = emptyString,
    this.order = 0,
    this.status = false,
    this.title = emptyString,
    this.content = emptyString,
    this.iconUrl = emptyString,
    this.actionType = emptyString,
    this.actionLink = emptyString,
    this.hidden = false,
    this.config = const {},
  });

  final String id;
  final int order;
  final bool status;
  final String title;
  final String content;
  final String iconUrl;
  final String actionType;
  final String actionLink;
  final bool hidden;
  final Map<String, dynamic> config;

  static const empty = TooltipMessageEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        order,
        status,
        title,
        content,
        iconUrl,
        actionType,
        actionLink,
        hidden,
        config,
      ];
}

extension TooltipMessageEntityDomainExtension on TooltipMessageEntity {
  TooltipMessageTypeEnum get type {
    final action = actionLink.toUpperCase().split(':').firstOrNull ?? '';
    return TooltipMessageTypeEnum.fromIdentifier(action);
  }

  TooltipMessageActionTypeEnum get getActionType {
    return TooltipMessageActionTypeEnum.fromIdentifier(actionType);
  }

  ServiceIdentifierEnum get getDepositServiceIdentifier {
    final contents = actionLink.toUpperCase().split(':');
    if (contents.length <= 1) {
      return ServiceIdentifierEnum.unknown;
    }
    return ServiceIdentifierEnum.fromString(contents.last);
  }

  ServiceIdentifierEnum get getTransferServiceIdentifier {
    return getDepositServiceIdentifier;
  }

  FeatureFlagEnum get getRelatedFeatureFlag {
    // Complete the switch statement if necessary
    return switch (type) {
      TooltipMessageTypeEnum.invest => FeatureFlagEnum.invest,
      TooltipMessageTypeEnum.iban || TooltipMessageTypeEnum.myIban => FeatureFlagEnum.iban,
      TooltipMessageTypeEnum.yearlyRecap => FeatureFlagEnum.yearRecap,
      _ => FeatureFlagEnum.unknown,
    };
  }
}
