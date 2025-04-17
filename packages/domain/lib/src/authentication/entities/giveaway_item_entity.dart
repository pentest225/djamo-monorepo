import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/authentication/enums/giveaway_type_enum.dart';

class GiveawayItemEntity extends BaseEntity {
  const GiveawayItemEntity({
    this.data = const {},
    this.type = emptyString,
    this.expiryDateTime = emptyString,
  });

  final Map<String, dynamic> data;
  final String type;
  final String expiryDateTime;

  static const empty = GiveawayItemEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        data,
        type,
        expiryDateTime,
      ];
}

extension GiveawayItemEntityExtension on GiveawayItemEntity {
  DateTime? get getExpiryDateTime {
    return DateTime.tryParse(expiryDateTime);
  }

  GiveawayTypeEnum get getType {
    return GiveawayTypeEnum.fromString(type);
  }

  String get expiryText {
    if (expireInDays == null) {
      return '';
    }
    if (isAboutToExpire) {
      if (expireInHours != null && expireInHours! < 24) {
        if (expireInHours! < 1) {
          return "🔥 Expire dans moins d'une heure";
        }
        return '🔥 Expire dans $expireInHours h';
      }
      return "🕐 Expire dans $expireInDays ${expireInDays! > 1 ? "jours" : "jour"}";
    }

    return "Expire le ${getExpiryDateTime.formatAs('dd MMM yyyy')}";
  }

  bool get isAboutToExpire {
    return expireInDays != null && expireInDays! <= DomainConstants.giveAwayAboutToExpireDays;
  }

  int? get expireInDays {
    final expiryDays = getExpiryDateTime?.difference(DateTime.now()).inDays;
    return expiryDays;
  }

  int? get expireInHours {
    final expiryHours = getExpiryDateTime?.difference(DateTime.now()).inHours;
    return expiryHours;
  }

  String get widgetTitle {
    return switch (getType) {
      GiveawayTypeEnum.freeMobileMoneyDeposit => 'Dépôt gratuit',
      GiveawayTypeEnum.freeMobileMoneyTransfer => 'Transfert gratuit',
      GiveawayTypeEnum.cashbackOnNextPayment => '$cashBackPercentage% de Cashback',
      _ => '',
    };
  }

  String get widgetCtaLabel {
    return switch (getType) {
      GiveawayTypeEnum.freeMobileMoneyDeposit => "Déposer de l'argent",
      GiveawayTypeEnum.freeMobileMoneyTransfer => "Transférer de l'argent",
      GiveawayTypeEnum.cashbackOnNextPayment => 'Effectuer un paiement',
      _ => '',
    };
  }

  String get widgetSubtitle {
    return switch (getType) {
      GiveawayTypeEnum.freeMobileMoneyDeposit => 'Zéro frais sur votre prochain dépôt',
      GiveawayTypeEnum.freeMobileMoneyTransfer => 'Zéro frais sur votre prochain transfert',
      GiveawayTypeEnum.cashbackOnNextPayment => "Sur votre prochain paiement $cashBackMerchant ${physicalCardOnlyCashback ? 'avec votre carte physique' : ''}",
      _ => '',
    };
  }

  String get cashBackPercentage {
    final percentage = DP.asString(data['percentage']);
    return percentage;
  }

  bool get physicalCardOnlyCashback {
    final physicalCardOnly = DP.asBool(data['physicalCardOnly']);
    return physicalCardOnly;
  }

  String get cashBackMerchant {
    final merchant = DP.asString(data['merchant']);
    return merchant;
  }

// Color get widgetBackgroundColor {
//   switch (type) {
//     case GiveawayTypeEnum.freeMobileMoneyDeposit:
//       return DjamoColors.yellowBgColor;
//     case GiveawayTypeEnum.freeMobileMoneyTransfer:
//       return DjamoColors.lightBlueBgColor2;
//     default:
//   }
//   return DjamoColors.greenBgColor2;
// }
}
