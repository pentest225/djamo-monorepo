part of 'entity_mapper_deserialize.dart';

List<JsonMap> serializes<T>(List<T> e) {
  return e.map(serialize).toList();
}

Map<String, List<JsonMap>> serializeMapList<T>(Map<String, List<T>> e) {
  return e.map((key, value) => MapEntry(key, serializes(value)));
}

Map<String, JsonMap> serializeMap<T>(Map<String, T> e) {
  return e.map((key, value) => MapEntry(key, serialize(value)));
}
