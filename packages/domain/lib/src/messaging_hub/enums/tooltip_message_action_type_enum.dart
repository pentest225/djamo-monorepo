enum TooltipMessageActionTypeEnum {
  web._('web'),
  app._('app'),
  supportArticle._('support_article'),
  ;

  const TooltipMessageActionTypeEnum._(this.identifier);

  factory TooltipMessageActionTypeEnum.fromIdentifier(String identifier) {
    return values.firstWhere(
      (e) => e.identifier == identifier,
      orElse: () => TooltipMessageActionTypeEnum.app,
    );
  }

  final String identifier;
}

extension TooltipMessageActionTypeEnumDomainExtension on TooltipMessageActionTypeEnum {
  bool get isWeb => this == TooltipMessageActionTypeEnum.web;
  bool get isApp => this == TooltipMessageActionTypeEnum.app;
  bool get isSupportArticle => this == TooltipMessageActionTypeEnum.supportArticle;
}
