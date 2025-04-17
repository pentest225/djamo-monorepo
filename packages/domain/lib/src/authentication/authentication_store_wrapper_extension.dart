import 'package:domain/domain.dart';

extension AuthenticationStoreWrapperX on AuthenticationStoreWrapper {
  UserEntity get user {
    return value<UserEntity>();
  }

  UserSessionEntity get session {
    return value<UserSessionEntity>();
  }

  AuthenticationStatusEnum get status {
    return value<AuthenticationStatusEnum>();
  }
}
