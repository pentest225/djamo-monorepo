import 'package:domain/src/services/entities/entities.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:domain/src/services/objects/bank_services_object.dart';
import 'package:equatable/equatable.dart';

class ServicesGroup extends Equatable {
  const ServicesGroup({
    this.services = const {},
    this.banks = BankServicesObject.empty,
    this.billers = const [],
    this.selectedService = ServiceEntity.empty,
    this.selectedBank = BankServiceEntity.empty,
  });

  final Map<ServiceCategoryTypeEnum, ServiceEntities> services;
  final ServiceEntity selectedService;
  final BankServicesObject banks;
  final BillerServiceEntities billers;
  final BankServiceEntity selectedBank;

  ServiceEntities getServices(ServiceCategoryTypeEnum serviceCategoryTypeEnum) {
    return services[serviceCategoryTypeEnum] ?? [];
  }

  static const empty = ServicesGroup();

  ServicesGroup copyWith({
    Map<ServiceCategoryTypeEnum, ServiceEntities>? services,
    ServiceEntity? selectedService,
    BankServicesObject? banks,
    BillerServiceEntities? billers,
    BankServiceEntity? selectedBank,
  }) {
    return ServicesGroup(
      services: services ?? this.services,
      selectedService: selectedService ?? this.selectedService,
      banks: banks ?? this.banks,
      billers: billers ?? this.billers,
      selectedBank: selectedBank ?? this.selectedBank,
    );
  }

  @override
  List<Object> get props => [
        services,
        selectedService,
        banks,
        billers,
        selectedBank,
      ];
}
