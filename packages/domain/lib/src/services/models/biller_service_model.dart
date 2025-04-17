import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/services/models/biller_service_config_model.dart';

typedef BillerServiceModels = List<BillerServiceModel>;

class BillerServiceModel extends BaseModel {
  const BillerServiceModel({
    required this.id,
    required this.externalBillerId,
    required this.billerName,
    required this.label,
    required this.description,
    required this.category,
    required this.iconUrl,
    required this.providerName,
    required this.status,
    required this.isActive,
    required this.config,
  });

  factory BillerServiceModel.fromJson(Map<String, dynamic> json) {
    return BillerServiceModel(
      id: DP.asString(json['id']),
      externalBillerId: DP.asInt(json['externalBillerId']),
      billerName: DP.asString(json['billerName']),
      label: DP.asString(json['label']),
      description: DP.asString(json['description']),
      category: DP.asString(json['category']),
      iconUrl: DP.asString(json['iconUrl']),
      providerName: DP.asString(json['providerName']),
      status: DP.asString(json['status']),
      isActive: DP.asBool(json['isActive']),
      config: BillerServiceConfigModel.fromJson(DP.asMap(json['config'])),
    );
  }

  final String id;
  final int externalBillerId;
  final String billerName;
  final String label;
  final String description;
  final String category;
  final String iconUrl;
  final String providerName;
  final String status;
  final bool isActive;
  final BillerServiceConfigModel config;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'externalBillerId': externalBillerId,
      'billerName': billerName,
      'label': label,
      'description': description,
      'category': category,
      'iconUrl': iconUrl,
      'providerName': providerName,
      'status': status,
      'isActive': isActive,
      'config': config.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        id,
        externalBillerId,
        billerName,
        label,
        description,
        category,
        iconUrl,
        providerName,
        status,
        isActive,
        config,
      ];
}

extension BillerServiceModelExtension on BillerServiceModel {}
