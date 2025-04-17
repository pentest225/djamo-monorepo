import 'package:domain/src/_core/_core.dart';
import 'package:domain/src/common/enums/enums.dart';

class UserSessionEntity extends BaseEntity {
  const UserSessionEntity({
    this.status = UserSessionStatusEnum.unactivated,
    String expireIn = '',
    String token = '',
    this.notificationToken = '',
    this.phoneNumberId = '',
    this.isNewRegistration = false,
    this.connectivityStatus = AppConnectivityStatusEnum.online,
    this.canAutoLock = true,
    this.isIntercomOpened = false,
    this.appLockStatus = AppLockStatusEnum.locked,
    this.isPKPValid = true,
  })  : _expireIn = expireIn,
        _token = token;

  final UserSessionStatusEnum status;
  final String phoneNumberId;
  final String _expireIn;
  final String _token;
  final String notificationToken;
  final bool isNewRegistration;
  final AppConnectivityStatusEnum connectivityStatus;
  final bool canAutoLock;
  final bool isIntercomOpened;
  final AppLockStatusEnum appLockStatus;
  final bool isPKPValid;

  static const empty = UserSessionEntity();

  bool get isEmpty => this == empty;

  DateTime? get expireIn => DateTime.tryParse(_expireIn);

  UserSessionEntity lock() {
    return UserSessionEntity(
      expireIn: _expireIn,
      token: _token,
      status: status,
      phoneNumberId: phoneNumberId,
      notificationToken: notificationToken,
      connectivityStatus: connectivityStatus,
      isNewRegistration: isNewRegistration,
      canAutoLock: canAutoLock,
      isIntercomOpened: isIntercomOpened,
    );
  }

  UserSessionEntity unlock() {
    return UserSessionEntity(
      expireIn: _expireIn,
      token: _token,
      status: status,
      phoneNumberId: phoneNumberId,
      notificationToken: notificationToken,
      connectivityStatus: connectivityStatus,
      appLockStatus: AppLockStatusEnum.unlocked,
      isNewRegistration: isNewRegistration,
      canAutoLock: canAutoLock,
      isIntercomOpened: isIntercomOpened,
    );
  }

  //clean
  UserSessionEntity reset() {
    return UserSessionEntity.empty.copyWith(
      notificationToken: notificationToken,
      connectivityStatus: connectivityStatus,
    );
  }

  UserSessionEntity copyWith({
    UserSessionStatusEnum? status,
    String? phoneNumberId,
    String? expireIn,
    String? token,
    String? notificationToken,
    bool? isNewRegistration,
    AppConnectivityStatusEnum? connectivityStatus,
    bool? canAutoLock,
    bool? isIntercomOpened,
    AppLockStatusEnum? appLockStatus,
    bool? isPKPValid,
  }) {
    return UserSessionEntity(
      status: status ?? this.status,
      phoneNumberId: phoneNumberId ?? this.phoneNumberId,
      expireIn: expireIn ?? _expireIn,
      token: token ?? _token,
      notificationToken: notificationToken ?? this.notificationToken,
      isNewRegistration: isNewRegistration ?? this.isNewRegistration,
      connectivityStatus: connectivityStatus ?? this.connectivityStatus,
      appLockStatus: appLockStatus ?? this.appLockStatus,
      canAutoLock: canAutoLock ?? this.canAutoLock,
      isIntercomOpened: isIntercomOpened ?? this.isIntercomOpened,
      isPKPValid: isPKPValid ?? this.isPKPValid,
    );
  }

  @override
  List<Object> get props => [
        status,
        phoneNumberId,
        _expireIn,
        _token,
        notificationToken,
        isNewRegistration,
        connectivityStatus,
        canAutoLock,
        isIntercomOpened,
        appLockStatus,
        isPKPValid,
      ];
}

extension UserSessionModelExtension on UserSessionEntity {
  String get accessToken => _token;
}
