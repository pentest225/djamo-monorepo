import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/services/entities/biller_service_config_entity.dart';
import 'package:domain/src/services/entities/biller_service_field_entity.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:meta/meta.dart';

typedef BillerServiceEntities = List<BillerServiceEntity>;

class BillerServiceEntity extends BaseEntity {
  const BillerServiceEntity({
    this.id = emptyString,
    this.externalBillerId = 0,
    this.billerName = emptyString,
    this.label = emptyString,
    this.description = emptyString,
    this.category = emptyString,
    this.iconUrl = emptyString,
    this.providerName = emptyString,
    this.status = emptyString,
    this.isActive = false,
    this.config = BillerServiceConfigEntity.empty,
  });

  final String id;
  final int externalBillerId;
  final String billerName;
  final String label;
  final String description;
  @internal

  ///This is the category of the biller service
  ///Use [identifier] to get the enum value
  final String category;
  final String iconUrl;
  final String providerName;
  final String status;
  final bool isActive;
  final BillerServiceConfigEntity config;

  static const empty = BillerServiceEntity();
  bool get isEmpty => this == empty;

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

extension BillerServiceEntityExtension on BillerServiceEntity {
  BillerServiceCategoryEnum get getCategory {
    return BillerServiceCategoryEnum.fromString(category);
  }

  BillerServiceIdentifierEnum get identifier {
    return BillerServiceIdentifierEnum.fromString(billerName);
  }

  ServiceIdentifierEnum get getServiceIdentifier {
    return switch (identifier) {
      BillerServiceIdentifierEnum.ciePrepaid => ServiceIdentifierEnum.ciePrepaid,
      BillerServiceIdentifierEnum.ciePostpaid => ServiceIdentifierEnum.ciePostpaid,
      BillerServiceIdentifierEnum.canalPlus => ServiceIdentifierEnum.canalPlus,
      BillerServiceIdentifierEnum.fer => ServiceIdentifierEnum.fer,
      BillerServiceIdentifierEnum.sodeci => ServiceIdentifierEnum.sodeci,
      BillerServiceIdentifierEnum.woyofal => ServiceIdentifierEnum.woyofal,
      BillerServiceIdentifierEnum.rapido => ServiceIdentifierEnum.rapido,
      BillerServiceIdentifierEnum.senelec => ServiceIdentifierEnum.senelec,
      BillerServiceIdentifierEnum.seneau => ServiceIdentifierEnum.seneau,
      _ => ServiceIdentifierEnum.unknown,
    };
  }

  BillerServiceFieldEntity get getAccountReferenceField {
    return config.fields.firstWhere(
      (e) {
        return e.getType.isAccountReference;
      },
      orElse: () => BillerServiceFieldEntity.empty,
    );
  }

  bool get isServiceEnabled {
    return status == 'active';
  }

  bool get isGS2EPostpaid {
    return identifier.isCiePostpaid || identifier.isSodeci;
  }
}
