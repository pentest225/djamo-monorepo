part of 'entity_mapper_deserialize.dart';

List<T> deserializes<T extends BaseEntity>(List<JsonMap> e) {
  return e.map((json) => deserialize<T>(json)!).toList();
}

Map<String, List<T>> deserializeMapList<T extends BaseEntity>(Map<String, List<JsonMap>> e) {
  return e.map((key, value) => MapEntry(key, deserializes<T>(value)));
}

Map<String, T> deserializeMap<T extends BaseEntity>(Map<String, JsonMap> e) {
  return e.map((key, value) => MapEntry(key, deserialize<T>(value)!));
}
