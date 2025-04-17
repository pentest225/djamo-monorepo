import 'dart:convert';
import 'dart:developer';

const String _awsS3HostUrl = 'https://static-assets.djamo.io';

///Dynamic Class Utility class for data parsing and conversion.
class DP {
  /// Converts [value] to a string.
  ///
  /// Returns an empty string if [value] is null.
  static String asString(dynamic value) => _toString(value);

  static String asImageUrlString(dynamic value) {
    final path = _toString(value);
    return path.contains(_awsS3HostUrl) ? path : '$_awsS3HostUrl/$path';
  }

  /// Converts [value] to an integer.
  ///
  /// Returns [defaultValue] if conversion fails.
  static int asInt(dynamic value, {int defaultValue = 0}) => _toInt(
        value,
        defaultValue: defaultValue,
      );

  /// Converts [value] to a double.
  ///
  /// Returns [defaultValue] if conversion fails.
  static double asDouble(dynamic value, {double defaultValue = 0}) => _toDouble(
        value,
        defaultValue: defaultValue,
      );

  /// Converts [value] to a num.
  ///
  /// Returns [defaultValue] if conversion fails.
  static num asNum(dynamic value, {num defaultValue = 0}) => _toNum(
        value,
        defaultValue: defaultValue,
      );

  /// Converts [value] to a list of [T].
  static List<T> asListOf<T>(dynamic value) {
    try {
      final items = _asList(value as List? ?? []);
      return List<T>.from(items);
    } catch (e) {
      return [];
    }
  }

  /// Decodes [value] as a list of [T].
  ///
  /// Uses [decoder] to decode each item in the list.
  static List<T> decodeAsListOf<T>(
    dynamic value,
    T Function(dynamic item) decoder,
  ) {
    final items = value as List? ?? [];
    return List<T>.generate(
      items.length,
      (index) => decoder(
        items.elementAt(index),
      ),
    );
  }

  /// Converts [value] to a list.
  static List<dynamic> asList(dynamic value) => _asList(value);

  /// Converts [value] to a nullable map.
  ///
  /// Returns null if [value] cannot be converted.
  static Map<String, dynamic>? asNullableMap(dynamic value) {
    try {
      if (value is String) {
        return json.decode(value) as Map<String, dynamic>?;
      }
      final dyn = value as Map?;
      if (dyn != null) {
        return Map<String, dynamic>.from(dyn);
      }
      return null;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  /// Converts [value] to a map.
  ///
  /// Returns an empty map if [value] cannot be converted.
  static Map<String, dynamic> asMap(dynamic value) {
    return asNullableMap(value) ?? {};
  }

  /// Converts [value] to a map of [K] keys and [V] values.
  ///
  /// Returns an empty map if [value] cannot be converted.
  static Map<K, V> asMapOf<K, V>(dynamic value) {
    if (value == null) {
      return Map<K, V>.from({});
    }
    try {
      return Map<K, V>.from(value as Map);
    } catch (_) {
      return {};
    }
  }

  /// Converts [value] to a boolean.
  ///
  /// Returns [defaultValue] if conversion fails.
  static bool asBool(
    dynamic value, {
    bool defaultValue = false,
  }) {
    if (value is bool) {
      return value;
    }
    return bool.tryParse(value.toString().toLowerCase()) ?? defaultValue;
  }

  /// Converts [value] to a DateTime.
  ///
  /// Returns null if [value] cannot be converted.
  static DateTime? asDateTime(dynamic value) => _toDateTime(value);

  static double _toDouble(dynamic value, {double defaultValue = 0}) {
    if (value != null) {
      return double.tryParse(value.toString()) ?? defaultValue;
    }
    return defaultValue;
  }

  static int _toInt(dynamic value, {int defaultValue = 0}) {
    try {
      if (value is int) {
        return value;
      }
      return int.tryParse(value.toString()) ?? defaultValue;
    } catch (_) {
      return defaultValue;
    }
  }

  static num _toNum(dynamic value, {num defaultValue = 0}) {
    if (value is num) {
      return value;
    }
    return num.tryParse(value.toString()) ?? defaultValue;
  }

  static String _toString(dynamic value) {
    if (value is String) return value;
    final str = value.toString();
    if (str.toLowerCase().contains('null')) {
      return '';
    }
    return str;
  }

  static DateTime? _toDateTime(dynamic value) {
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value);
    return null;
  }

  static List<dynamic> _asList(dynamic value) {
    return (value as List<dynamic>? ?? <dynamic>[]).where((element) {
      return element != null;
    }).toList();
  }
}
