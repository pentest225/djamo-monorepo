typedef PictureSize = ({double width, double height});

enum PictureFormatEnum {
  cardID1._(2),
  cardID2._(2),
  passport._(1),
  document._(1),
  certificateOfIdentity._(1),
  selfie._(1),
  selfieWithID._(1);

  const PictureFormatEnum._(this.captures);

  final int captures;
}

extension PictureFormatEnumExtension on PictureFormatEnum {
  bool get isCardID1 => this == PictureFormatEnum.cardID1;
  bool get isCardID2 => this == PictureFormatEnum.cardID2;
  bool get isPassport => this == PictureFormatEnum.passport;
  bool get isDocument => this == PictureFormatEnum.document;
  bool get isCertificateOfIdentity => this == PictureFormatEnum.certificateOfIdentity;
  bool get isSelfieWithID => this == PictureFormatEnum.selfieWithID;
  bool get isSelfie => this == PictureFormatEnum.selfie || this == PictureFormatEnum.selfieWithID;

  PictureSize get getSize {
    return switch (this) {
      PictureFormatEnum.cardID1 => (width: 325, height: 224),
      PictureFormatEnum.cardID2 => (width: 325, height: 208),
      PictureFormatEnum.passport || PictureFormatEnum.selfieWithID => (width: 325, height: 380),
      PictureFormatEnum.document => (width: 325, height: 380),
      PictureFormatEnum.certificateOfIdentity => (width: 325, height: 224),
      PictureFormatEnum.selfie => (width: 327, height: 380),
    };
  }

  double get getRatio {
    final size = getSize;
    return size.width / size.height;
  }
}
