enum QrCodeActionEnum {
  qrCode._('code'),
  scan._('scan');

  const QrCodeActionEnum._(this.identifier);

  factory QrCodeActionEnum.fromIdentifier(String path) {
    return QrCodeActionEnum.values.firstWhere(
      (element) => element.identifier == path,
      orElse: () => QrCodeActionEnum.qrCode,
    );
  }

  final String identifier;
}

extension QrCodeActionEnumDomainExtension on QrCodeActionEnum {
  bool get isQrCode => this == QrCodeActionEnum.qrCode;
  bool get isScan => this == QrCodeActionEnum.scan;
}
