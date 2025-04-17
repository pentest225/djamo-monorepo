import 'package:domain/src/_core/_core.dart';

typedef CityEntities = List<CityEntity>;

class CityEntity extends BaseEntity implements SearchableMixin {
  const CityEntity({
    this.id = emptyString,
    this.name = emptyString,
    this.marketId = emptyString,
  });

  final String id;
  final String name;
  final String marketId;

  static const empty = CityEntity();
  bool get isEmpty => this == empty;

  @override
  bool hasMatchWithSearchKey({required String key}) {
    return useHasMatchWithSearchKey(key: key, field: name);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        marketId,
      ];
}

extension CityEntityExtension on CityEntity {
  bool get isDeliveryAvailable {
    return ['dakar', 'abidjan'].any((e) => e == name.toLowerCase());
  }
}
