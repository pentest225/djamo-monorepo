enum ProductTypeEnum {
  premium._('premium'),
  free._('free'),
  ;

  const ProductTypeEnum._(this.key);

  factory ProductTypeEnum.fromString(String key) {
    return ProductTypeEnum.values.firstWhere(
      (e) => e.key == key.toLowerCase(),
      orElse: () => ProductTypeEnum.free,
    );
  }

  final String key;
}

extension ProductTypeEnumExtension on ProductTypeEnum {
  bool get isPremium => this == ProductTypeEnum.premium;
  bool get isFree => this == ProductTypeEnum.free;
}
