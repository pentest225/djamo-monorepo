import 'dart:convert';

import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

@internal
final class UserTokenSession extends Equatable {
  const UserTokenSession({
    required this.accessToken,
    required this.expiresIn,
  });

  factory UserTokenSession.fromJson(Map<String, dynamic> json) {
    return UserTokenSession(
      accessToken: DP.asString(json['accessToken']),
      expiresIn: DateTime.tryParse(DP.asString(json['expiresIn']))?.timestamp ?? 0,
    );
  }

  factory UserTokenSession.fromJsonString(String json) {
    try {
      final map = DP.asMap(jsonDecode(json));
      return UserTokenSession(
        accessToken: DP.asString(map['access_token']),
        expiresIn: DP.asInt(map['expires_in']),
      );
    } catch (e) {
      return const UserTokenSession(
        accessToken: '',
        expiresIn: 0,
      );
    }
  }

  final String accessToken;
  final int expiresIn;

  String get getBearer {
    return 'Bearer $accessToken';
  }

  DateTime? get lastRefreshDateTime {
    try {
      if (expiresIn == 0) return null;
      return DateTime.fromMillisecondsSinceEpoch(expiresIn);
    } catch (_) {
      return null;
    }
  }

  String toJson() {
    return json.encode({
      'access_token': accessToken,
      'expires_in': expiresIn,
    });
  }

  @override
  List<Object> get props => [
        accessToken,
        expiresIn,
      ];
}
