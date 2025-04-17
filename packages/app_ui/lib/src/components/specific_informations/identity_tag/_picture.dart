part of 'app_identity_tag_component.dart';

class _Picture extends AppIdentityTagComponent {
  const _Picture({
    required this.imageUrl,
    super.key,
    super.label,
    super.leftBadge,
    super.rightBadge,
    super.onPressed,
    super.size,
    this.httpHeaders,
    this.fit,
  });

  final String imageUrl;
  final Map<String, String>? httpHeaders;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      size: size,
      label: label,
      imageUrl: imageUrl,
      country: leftBadge,
      brand: rightBadge,
      onPressed: onPressed,
      httpHeaders: httpHeaders,
      fit: fit,
    );
  }
}
