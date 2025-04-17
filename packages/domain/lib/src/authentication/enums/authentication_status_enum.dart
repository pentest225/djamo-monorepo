enum AuthenticationStatusEnum {
  /// User is not authenticated
  anonymous,

  ///
  unauthenticated,

  /// User is authenticated
  authenticated,

  /// User is authenticated locally
  locallyAuthenticated,
  ;
}

extension AuthenticationStatusEnumExtension on AuthenticationStatusEnum {
  ///
  bool get isAnonymous {
    return this == AuthenticationStatusEnum.anonymous;
  }

  ///
  bool get isAuthenticated {
    return this == AuthenticationStatusEnum.authenticated;
  }

  ///
  bool get isLocalAuth {
    return this == AuthenticationStatusEnum.locallyAuthenticated;
  }

  ///
  bool get isCertainlyAuthenticated {
    return [
      AuthenticationStatusEnum.authenticated,
      AuthenticationStatusEnum.locallyAuthenticated,
    ].contains(this);
  }
}
