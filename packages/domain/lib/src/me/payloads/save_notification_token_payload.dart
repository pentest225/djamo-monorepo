import 'package:domain/src/_core/_core.dart';

class SaveNotificationTokenPayload extends BasePayload {
  const SaveNotificationTokenPayload({
    required this.token,
    required this.appVersionName,
  });

  final String token;
  final String appVersionName;

  Map<String, dynamic> toJson() {
    return {
      'fcmDeviceToken': token,
      'currentAppVersion': appVersionName,
    };
  }

  @override
  List<Object?> get props => [
        token,
        appVersionName,
      ];
}
