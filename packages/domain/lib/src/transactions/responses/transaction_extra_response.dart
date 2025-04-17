import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class TransactionExtraResponse extends BaseResponse {
  const TransactionExtraResponse({
    required Map<String, dynamic> extra,
  }) : _extra = extra;

  factory TransactionExtraResponse.fromJson(Map<String, dynamic> json) {
    return TransactionExtraResponse(
      extra: json,
    );
  }

  final Map<String, dynamic> _extra;

  InvestTransactionExtra get invest {
    return InvestTransactionExtra._(_extra);
  }

  BillsTransactionExtra get bills {
    return BillsTransactionExtra._(_extra);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ..._extra,
    };
  }

  static const empty = TransactionExtraResponse(extra: {});

  bool get isEmpty => this == TransactionExtraResponse.empty;

  @override
  List<Object?> get props => [
        _extra,
      ];
}

extension type InvestTransactionExtra._(JsonMap extra) {
  // add extra getter here
}

extension type BillsTransactionExtra._(JsonMap extra) {
  List<String> get getPrepaidBillRechargeToken {
    final operatorExtras = DP.asMap(extra['operatorExtras']);
    return DP.asListOf<String>(operatorExtras['token']);
  }

  JsonMap get getCIEPrepaidExtraInfoLegacy {
    final operatorExtras = DP.asMap(extra['operatorExtras']);
    final ciePowerExtrasItems = DP.asMap(operatorExtras['ciePowerExtras']);
    final receipt = DP.asString(operatorExtras['externalTransactionId']);
    final meterReference = DP.asString(operatorExtras.getOrElse('meterReference', () => ''));
    final meterNumber = DP.asString(operatorExtras.getOrElse('meterNumber', () => ''));
    final kwh = DP.asString(ciePowerExtrasItems.getOrElse('kwh', () => ''));
    final energyCost = DP.asDouble(ciePowerExtrasItems.getOrElse('amt', () => 0));
    final cieRefExtras = {
      if (meterReference.isNotEmpty) 'Référence': meterReference,
      if (meterNumber.isNotEmpty) 'Numéro Compteur': meterNumber,
    };
    final ciePowerExtrasFormatted = {
      if (kwh.isNotEmpty) 'Kwh': '$kwh kWh'.replaceFirst('.', ','),
      if (energyCost > 0) 'Montant Energie': '$energyCost F CFA'.replaceFirst('.', ','),
    };
    final cieFeeExtrasItems = DP.asListOf<JsonMap>(operatorExtras['cieFeeExtras']);
    final cieFeeExtrasFormatted = cieFeeExtrasItems.fold<JsonMap>(
      {},
      (previous, item) {
        final key = DP.asString(item['name']);
        final value = DP.asDouble(item['amt']);
        if (key.isNotEmpty && value > 0) {
          return {
            ...previous,
            key: '$value F CFA'.replaceFirst('.', ','),
          };
        }
        return previous;
      },
    );
    final cieDebtExtrasItems = DP.asListOf<JsonMap>(operatorExtras['cieDebtExtras']).firstOrNull ?? {};
    final cieDebtExtrasFormatted = {
      if (ciePowerExtrasFormatted.isNotEmpty) 'Redevance Branchement': "${DP.asDouble(cieDebtExtrasItems["amt"]).toString().replaceFirst(".", ",")} F CFA",
      if (ciePowerExtrasFormatted.isEmpty) 'Solde avant règlement': "${DP.asDouble(cieDebtExtrasItems["balanceBefore"]).toString().replaceFirst(".", ",")} F CFA",
      if (ciePowerExtrasFormatted.isEmpty) 'Solde après règlement': "${DP.asDouble(cieDebtExtrasItems["balanceAfter"]).toString().replaceFirst(".", ",")} F CFA",
    };
    final vat = operatorExtras['vat'] as String?;
    return {
      ...cieRefExtras,
      ...ciePowerExtrasFormatted,
      ...cieFeeExtrasFormatted,
      ...cieDebtExtrasFormatted,
      if (vat != null) 'TVA': '$vat F CFA'.replaceFirst('.', ','),
      if (receipt.isNotEmpty) 'Reçu': receipt,
    };
  }

  String get getCIEPrepaidExtraMessageLegacy {
    final operatorExtras = DP.asMap(extra['operatorExtras']);
    final message = DP.asString(operatorExtras['message']);
    return message.replaceAll('\n', '');
  }

  JsonMap get getWoyofalExtraInfoLegacy {
    final operatorExtras = DP.asMap(extra['operatorExtras']);
    final woyofalPowerExtrasItems = DP.asMap(operatorExtras['woyofalPowerExtras']);
    final kwh = DP.asString(woyofalPowerExtrasItems.getOrElse('kwh', () => ''));
    if (kwh.isEmpty) return {};
    return {
      'Kwh': '$kwh kWh'.replaceFirst('.', ','),
    };
  }
}
