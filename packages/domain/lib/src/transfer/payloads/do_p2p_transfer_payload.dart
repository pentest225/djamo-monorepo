import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class DoP2PTransferPayload extends BasePayload {
  const DoP2PTransferPayload({
    required this.accountId,
    required this.serviceIdentifier,
    required this.countryIsoCodeAlpha3,
    required this.recipientLabel,
    required this.recipientE164,
    required this.note,
    required this.illustrationUrl,
    required this.amount,
    required this.isQrCodeTransfer,
  });

  factory DoP2PTransferPayload.local({
    required String accountId,
    required double amount,
    required String recipientLabel,
    required String recipientE164,
    required String note,
    required String illustrationUrl,
    required bool isQrCodeTransfer,
  }) {
    return DoP2PTransferPayload(
      accountId: accountId,
      serviceIdentifier: '',
      countryIsoCodeAlpha3: '',
      recipientLabel: recipientLabel,
      recipientE164: recipientE164,
      note: note,
      illustrationUrl: illustrationUrl,
      amount: amount,
      isQrCodeTransfer: isQrCodeTransfer,
    );
  }

  final String accountId;
  final String serviceIdentifier;
  final String countryIsoCodeAlpha3;
  final String recipientLabel;
  final String recipientE164;
  final String note;
  final String illustrationUrl;
  final double amount;
  final bool isQrCodeTransfer;

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'amount': amount,
      'recipientLabel': recipientLabel.orNull ?? recipientE164,
      'recipientE164': recipientE164,
      'note': note,
      if (illustrationUrl.isNotEmpty) 'illustrationUrl': illustrationUrl,
      if (serviceIdentifier.isNotEmpty) 'serviceIdentifier': serviceIdentifier,
      if (countryIsoCodeAlpha3.isNotEmpty) 'countryIsoCode': countryIsoCodeAlpha3,
      if (isQrCodeTransfer) 'isQrCodeTransfer': isQrCodeTransfer,
    };
  }

  @override
  List<Object?> get props => [
        serviceIdentifier,
        countryIsoCodeAlpha3,
        recipientLabel,
        recipientE164,
        note,
        illustrationUrl,
        amount,
        isQrCodeTransfer,
      ];
}
