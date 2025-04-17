import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class BuyBillPayload extends BasePayload {
  const BuyBillPayload({
    required this.accountReference,
    required this.accountReferenceLabel,
    required this.billerId,
    required this.additionalData,
    required this.params,
  });

  final String accountReference;
  final String accountReferenceLabel;
  final String billerId;
  final List<JsonMap> params;
  final JsonMap additionalData;

  Map<String, dynamic> toJson() {
    final labelToBeUsed = _getLabel();
    return {
      'smartCardOrMeterId': accountReference,
      'billerRefNo': accountReference,
      'billerId': billerId,
      'label': labelToBeUsed,
      if (params.isNotEmpty) 'params': params,
      ...additionalData
        ..removeWhere((key, value) {
          return key.isEmpty || value == null;
        }),
    };
  }

  String _getLabel() {
    if (accountReferenceLabel.isNotEmpty) return accountReferenceLabel;
    final refPrefix = accountReference.split('').takeFirst(3).join();
    if (refPrefix.isEmpty) return 'Default';
    return 'Default $refPrefix...';
  }

  @override
  List<Object?> get props => [
        accountReference,
        accountReferenceLabel,
        billerId,
        params,
        additionalData,
      ];
}
