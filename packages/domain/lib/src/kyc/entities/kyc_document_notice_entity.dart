import 'package:domain/src/_core/_core.dart';

class KYCDocumentNoticeEntity extends BaseEntity {
  const KYCDocumentNoticeEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.hintTitle = emptyString,
    this.hintText = emptyString,
    this.subHintText = emptyString,
    this.needDetection = false,
    this.format = emptyString,
  });

  final String id;
  final String name;
  final String hintTitle;
  final String hintText;
  final String subHintText;
  final bool needDetection;
  final String format;

  static const empty = KYCDocumentNoticeEntity();
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

extension KycDocumentNoticeEntityExtension on KYCDocumentNoticeEntity {}
