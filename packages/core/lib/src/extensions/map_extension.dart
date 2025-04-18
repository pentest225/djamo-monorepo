extension EncodeMapOfObjectsList<T> on Map<String, List<T>> {
  Map<String, List<Map<String, dynamic>>> transformMapValuesToJsonMaps(
    Map<String, dynamic> Function(T) encoder,
  ) {
    return map(
      (key, value) {
        return MapEntry(key, value.map(encoder).toList());
      },
    );
  }
}

extension DecodeMapOfJsonMapList on Map<String, List<dynamic>> {
  Map<String, List<T>> transformJsonMapsValueToTypedValues<T>(
    List<T> Function(List<Map<String, dynamic>>) decoder,
  ) {
    return map(
      (key, value) {
        return MapEntry(
          key,
          decoder(
            value.map((e) {
              return e as Map<String, dynamic>;
            }).toList(),
          ),
        );
      },
    );
  }
}
