import 'package:domain/src/_core/_core.dart';

class CompanyEntity extends BaseEntity {
  const CompanyEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.isActive = false,
    this.logoUrl = emptyString,
    this.profile = emptyString,
  });

  final String id;
  final String name;
  final bool isActive;
  final String logoUrl;
  final String profile;

  static const empty = CompanyEntity();
  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        id,
        name,
        isActive,
        logoUrl,
        profile,
      ];
}

extension CompanyEntityDomainExtension on CompanyEntity {}
