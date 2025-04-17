import 'dart:convert';
import 'dart:io';

import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/markets/entities/entities.dart';
import 'package:domain/src/services/services.dart';
import 'package:petit_extension/petit_extension.dart';

typedef BankServiceEntities = List<BankServiceEntity>;
typedef GroupedBankServiceEntities<T> = Map<T, BankServiceEntities>;

typedef HelpTextToolItem = ({
  String type,
  String label,
  String webUri,
  String iosLauncher,
  String iosAppStoreLink,
  String androidPlayStoreLink,
});

class BankServiceEntity extends BaseEntity {
  const BankServiceEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.code = emptyString,
    this.market = MarketEntity.empty,
    this.hasBankAccount = false,
    this.iconUrl = emptyString,
    this.extras = const {},
    this.wireAccount = BankWireAccountServiceEntity.empty,
    this.order = 0,
  });

  final String id;
  final String name;
  final String code;
  final MarketEntity market;
  final bool hasBankAccount;
  final String iconUrl;
  final Map<String, dynamic> extras;
  final BankWireAccountServiceEntity wireAccount;
  final int order;

  static const empty = BankServiceEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        market,
        hasBankAccount,
        iconUrl,
        extras,
        wireAccount,
        order,
      ];
}

extension BankServiceEntityExtension on BankServiceEntity {
  BankFeesStrategyTypeEnum get feesStrategy {
    if (hasBankAccount) return BankFeesStrategyTypeEnum.freeOfCharge;
    return BankFeesStrategyTypeEnum.withFees;
  }

  double get getCashInMinimumDepositAmount {
    return DP.asDouble(
      extras['cashinMinimumDepositAmount'],
      defaultValue: -1,
    );
  }

  bool get isMinimumDepositAmountDefined => getCashInMinimumDepositAmount > 0;

  //wireBankAccountBankCode
  String get getWireBankAccountBankCode {
    return DP.asString(extras['wireBankAccountBankCode']);
  }

  //wireBankAccountAgencyCode
  String get getWireBankAccountAgencyCode {
    return DP.asString(extras['wireBankAccountAgencyCode']);
  }

  //wireBankAccountAccountNumber
  String get getWireBankAccountAccountNumber {
    return DP.asString(extras['wireBankAccountAccountNumber']);
  }

  //wireBankAccountRIBKey
  String get getWireBankAccountRIBKey {
    return DP.asString(extras['wireBankAccountRIBKey']);
  }

  String get getProcessingTime {
    return DP.asString(extras['processingTime']);
  }

  bool get hasProcessingTime => getProcessingTime.isNotEmpty;

  List<HelpTextToolItem> get getHelpTextTools {
    final tools = DP.asString(extras['helpTextTools']);
    if (tools.isEmpty) {
      return [];
    }
    return DP.asListOf<JsonMap>(json.decode(tools)).map((e) {
      return (
        type: DP.asString(e['type']),
        label: DP.asString(e['label']),
        webUri: DP.asString(e['webUri']),
        iosLauncher: DP.asString(e['iosLauncher']),
        iosAppStoreLink: DP.asString(e['iosAppStoreLink']),
        androidPlayStoreLink: DP.asString(e['androidPlayStoreLink']),
      );
    }).toList();
  }
}

extension BankExtension on BankServiceEntities {
  BankServiceEntity? getEnteredBank(String iban) {
    if (iban.length > 4) {
      final ibanCode = iban.substring(0, 5);
      final banks = where((bank) => ibanCode == bank.code).toList();
      if (banks.isNotEmpty) {
        return banks.first;
      }
    }

    return null;
  }

  bool isIbanBankValid(String iban) {
    final bank = getEnteredBank(iban);
    return bank != null;
  }
}

extension HelpTextToolItemX on HelpTextToolItem {
  bool get isTypeNoAction => type == 'no_action';
  bool get isTypeWeb => type == 'web';
  bool get isTypeApp => type == 'app';

  String get getBankAppUrl {
    if (isTypeApp) {
      if (Platform.isIOS) {
        return iosLauncher.orNull ?? iosAppStoreLink;
      }
      if (Platform.isAndroid) {
        return androidPlayStoreLink;
      }
    }
    return webUri;
  }
}
