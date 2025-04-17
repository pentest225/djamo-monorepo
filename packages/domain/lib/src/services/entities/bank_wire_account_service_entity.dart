import 'package:domain/src/_core/_core.dart';

class BankWireAccountServiceEntity extends BaseEntity {
  const BankWireAccountServiceEntity({
    this.id = emptyString,
    this.label = emptyString,
    this.accountHolder = emptyString,
    this.iconUrl = emptyString,
    this.iban = emptyString,
    this.extras = const {},
  });

  final String id;
  final String label;
  final String accountHolder;
  final String iconUrl;
  final String iban;
  final Map<String, dynamic> extras;

  static const empty = BankWireAccountServiceEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        label,
        accountHolder,
        iconUrl,
        iban,
        extras,
      ];
}

extension WireAccountServiceEntityExtension on BankWireAccountServiceEntity {
  String get getWireBankAccountBankCode {
    return DP.asString(extras['wireBankAccountBankCode']);
  }

  String get getWireBankAccountAgencyCode {
    return DP.asString(extras['wireBankAccountAgencyCode']);
  }

  String get getWireBankAccountAccountNumber {
    return DP.asString(extras['wireBankAccountAccountNumber']);
  }

  String get getWireBankAccountRIBKey {
    return DP.asString(extras['wireBankAccountRIBKey']);
  }
}
