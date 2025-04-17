import 'package:domain/src/_core/_core.dart';

class CompanyModel extends BaseModel {
  const CompanyModel({
    required this.id,
    required this.name,
    required this.isActive,
    required this.logoUrl,
    required this.profile,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      id: DP.asString(json['id']),
      name: DP.asString(json['name']),
      isActive: DP.asBool(json['isActive']),
      logoUrl: DP.asString(json['logoUrl']),
      profile: DP.asString(json['profile']),
    );
  }

  final String id;
  final String name;
  final bool isActive;
  final String logoUrl;
  final String profile;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isActive': isActive,
      'logoUrl': logoUrl,
      'profile': profile,
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        isActive,
        logoUrl,
        profile,
      ];
}

extension CompanyModelDomainExtension on CompanyModel {}
