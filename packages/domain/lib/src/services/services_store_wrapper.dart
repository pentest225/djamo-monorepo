import 'package:dartx/dartx.dart';
import 'package:domain/src/_core/types/void_callback.dart';
import 'package:domain/src/_store/_store.dart';
import 'package:domain/src/services/entities/entities.dart';
import 'package:domain/src/services/enums/enums.dart';
import 'package:domain/src/services/objects/bank_services_object.dart';

///Do not modify this data wrapper class content manually.
///You can add custom behavior in his extension.
///Do not remove comments starting with //## as they are used to generate the data wrapper
final class ServicesStoreWrapper extends StoreWrapper {
  ServicesStoreWrapper({super.identifier = 'Services'}) {
    //##Initializations
    _services = StoreUnit<GroupedServiceEntities, bool>.init(identifier: '_services', initialValue: const {});
    _selectedService = StoreUnit<ServiceEntity, bool>.init(identifier: '_selectedService', initialValue: ServiceEntity.empty);
    _banks = StoreUnit<BankServicesObject, BankServiceTypeEnum>.init(identifier: '_banks', initialValue: BankServicesObject.empty);
    _selectedBank = StoreUnit<BankServiceEntity, bool>.init(identifier: '_selectedBank', initialValue: BankServiceEntity.empty);
    _billers = StoreUnit<BillerServiceEntities, bool>.init(identifier: '_billers', initialValue: const []);
    _selectedBiller = StoreUnit<BillerServiceEntity, bool>.init(identifier: '_selectedBiller', initialValue: BillerServiceEntity.empty);
  }

  //##Declarations
  late final StoreUnit<GroupedServiceEntities, bool> _services;
  late final StoreUnit<ServiceEntity, bool> _selectedService;
  late final StoreUnit<BankServicesObject, BankServiceTypeEnum> _banks;
  late final StoreUnit<BankServiceEntity, bool> _selectedBank;
  late final StoreUnit<BillerServiceEntities, bool> _billers;
  late final StoreUnit<BillerServiceEntity, bool> _selectedBiller;

  @override
  T value<T>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Value
      GroupedServiceEntities: _services.value,
      ServiceEntity: _selectedService.value,
      BankServicesObject: _banks.value,
      BankServiceEntity: _selectedBank.value,
      BillerServiceEntities: _billers.value,
      BillerServiceEntity: _selectedBiller.value,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'value'));
    return r as T;
  }

  @override
  Stream<T> stream<T>([bool Function(T, T)? distinct]) {
    final type = T;
    final r = <Type, dynamic>{
      //##Stream
      GroupedServiceEntities: _services.stream,
      ServiceEntity: _selectedService.stream,
      BankServicesObject: _banks.stream,
      BankServiceEntity: _selectedBank.stream,
      BillerServiceEntities: _billers.stream,
      BillerServiceEntity: _selectedBiller.stream,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'stream'));
    return (r as Stream<T>).distinct(distinct);
  }

  @override
  Stream<RefreshArgs> request<T, RefreshArgs>() {
    final type = T;
    final r = <Type, dynamic>{
      //##Request
      GroupedServiceEntities: _services.request,
      ServiceEntity: _selectedService.request,
      BankServicesObject: _banks.request,
      BankServiceEntity: _selectedBank.request,
      BillerServiceEntities: _billers.request,
      BillerServiceEntity: _selectedBiller.request,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'request'));
    return r as Stream<RefreshArgs>;
  }

  @override
  Stream<StoreUnitStatus> status<T>() {
    final type = T;
    return <Type, Stream<StoreUnitStatus>>{
      //##Status
      GroupedServiceEntities: _services.status,
      ServiceEntity: _selectedService.status,
      BankServicesObject: _banks.status,
      BankServiceEntity: _selectedBank.status,
      BillerServiceEntities: _billers.status,
      BillerServiceEntity: _selectedBiller.status,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'status'));
  }

  @override
  void sink<T>(T data) {
    final type = T;
    final r = <Type, StoreSinkCallback<T>>{
      //##Sink
      GroupedServiceEntities: (a) => _services.sink(a as Map<ServiceCategoryTypeEnum, ServiceEntities>),
      ServiceEntity: (a) => _selectedService.sink(a as ServiceEntity),
      BankServicesObject: (a) => _banks.sink(a as BankServicesObject),
      BankServiceEntity: (a) => _selectedBank.sink(a as BankServiceEntity),
      BillerServiceEntities: (a) => _billers.sink(a as BillerServiceEntities),
      BillerServiceEntity: (a) => _selectedBiller.sink(a as BillerServiceEntity),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'sink'));
    return r(data);
  }

  @override
  void requestRefresh<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##Refresh
      GroupedServiceEntities: () => _services.requestRefresh(args as bool),
      ServiceEntity: () => _selectedService.requestRefresh(args as bool),
      BankServicesObject: () => _banks.requestRefresh(args as BankServiceTypeEnum),
      BankServiceEntity: () => _selectedBank.requestRefresh(args as bool),
      BillerServiceEntities: () => _billers.requestRefresh(args as bool),
      BillerServiceEntity: () => _selectedBiller.requestRefresh(args as bool),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'requestRefresh'));
    return r();
  }

  @override
  void toErr<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToErr
      GroupedServiceEntities: () => _services.toErr(),
      ServiceEntity: () => _selectedService.toErr(),
      BankServicesObject: () => _banks.toErr(),
      BankServiceEntity: () => _selectedBank.toErr(),
      BillerServiceEntities: () => _billers.toErr(),
      BillerServiceEntity: () => _selectedBiller.toErr(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'toErr'));
    return r();
  }

  @override
  void toLoading<T>() {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToLoading
      GroupedServiceEntities: () => _services.toLoading(),
      ServiceEntity: () => _selectedService.toLoading(),
      BankServicesObject: () => _banks.toLoading(),
      BankServiceEntity: () => _selectedBank.toLoading(),
      BillerServiceEntities: () => _billers.toLoading(),
      BillerServiceEntity: () => _selectedBiller.toLoading(),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesStoreWrapper', 'toLoading'));
    return r();
  }

  @override
  void toSuccess<T>([T? value]) {
    final type = T;
    final r = <Type, VoidCallback>{
      //##ToSuccess
      GroupedServiceEntities: () => _services.toSuccess(value as Map<ServiceCategoryTypeEnum, ServiceEntities>?),
      ServiceEntity: () => _selectedService.toSuccess(value as ServiceEntity?),
      BankServicesObject: () => _banks.toSuccess(value as BankServicesObject?),
      BankServiceEntity: () => _selectedBank.toSuccess(value as BankServiceEntity?),
      BillerServiceEntities: () => _billers.toSuccess(value as BillerServiceEntities?),
      BillerServiceEntity: () => _selectedBiller.toSuccess(value as BillerServiceEntity?),
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesDataWrapper', 'toSuccess'));
    return r();
  }

  @override
  Future<T?> requestRefreshAsync<T, RefreshArgs>(RefreshArgs args) {
    final type = T;
    final r = <Type, StoreUnitRequestAsyncCallback<T>>{
      //##RequestRefreshAsync
      GroupedServiceEntities: () => _services.requestRefreshAsync(args as bool) as Future<T?>,
      ServiceEntity: () => _selectedService.requestRefreshAsync(args as bool) as Future<T?>,
      BankServicesObject: () => _banks.requestRefreshAsync(args as BankServiceTypeEnum) as Future<T?>,
      BankServiceEntity: () => _selectedBank.requestRefreshAsync(args as bool) as Future<T?>,
      BillerServiceEntities: () => _billers.requestRefreshAsync(args as bool) as Future<T?>,
      BillerServiceEntity: () => _selectedBiller.requestRefreshAsync(args as bool) as Future<T?>,
    }.getOrElse(type, () => throw nonSupportedTypeInStoreWrapper<T>('ServicesDataWrapper', 'requestRefreshAsync'));
    return r();
  }

  @override
  void dispose() {
    //##Dispose
    _services.close();
    _selectedService.close();
    _banks.close();
    _selectedBank.close();
    _billers.close();
    _selectedBiller.close();
  }
}
