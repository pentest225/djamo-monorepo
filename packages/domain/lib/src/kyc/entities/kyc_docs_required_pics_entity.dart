import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/enums/picture_format_enum.dart';

typedef KYCDocsRequiredPicsEntities = List<KYCDocsRequiredPicsEntity>;

class KYCDocsRequiredPicsEntity extends BaseEntity {
  const KYCDocsRequiredPicsEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.hintTitle = emptyString,
    this.hintText = emptyString,
    this.subHintText = emptyString,
    this.needDetection = false,
    this.format = 0.0,
  });

  final String id;
  final String name;
  final String hintTitle;
  final String hintText;
  final String subHintText;
  final bool needDetection;
  final double format;

  static const empty = KYCDocsRequiredPicsEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        hintTitle,
        hintText,
        subHintText,
        needDetection,
        format,
      ];
}

extension KycDocsRequiredPicsEntityDomainExtension on KYCDocsRequiredPicsEntity {
  PictureFormatEnum get getFormat {
    return switch (format) {
      1.59 => PictureFormatEnum.cardID2,
      0.71 => PictureFormatEnum.passport,
      _ => PictureFormatEnum.cardID1,
    };
  }

  bool get isVerso => id.toLowerCase() == 'verso';
  bool get isRecto => id.toLowerCase() == 'recto';
  String get getFileKeyName {
    return isVerso ? 'front_page' : 'back_page';
  }
}
