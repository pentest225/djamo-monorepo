import 'package:domain/src/_core/_core.dart';

class IbanAgencyEntity extends BaseEntity {
  const IbanAgencyEntity({
    this.code = emptyString,
    this.libelle = emptyString,
  });

  final String code;
  final String libelle;

  static const empty = IbanAgencyEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        code,
        libelle,
      ];
}

extension IbanAgencyEntityExtension on IbanAgencyEntity {}
