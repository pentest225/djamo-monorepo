import 'package:domain/src/markets/entities/entities.dart';
import 'package:domain/src/markets/markets_store_wrapper.dart';

extension MarketsStoreWrapperX on MarketsStoreWrapper {
  CountryEntities get countries {
    return value<CountryEntities>();
  }

  CountryEntity get selectedCountry {
    return value<CountryEntity>();
  }

  CityEntities get cities {
    return value<CityEntities>();
  }

  CityEntity get selectedCity {
    return value<CityEntity>();
  }

  LocationEntities get locations {
    return value<LocationEntities>();
  }

  LocationEntity get selectedLocation {
    return value<LocationEntity>();
  }

  void requestRefreshForCities() {
    requestRefresh<CityEntities, bool>(true);
  }
}
