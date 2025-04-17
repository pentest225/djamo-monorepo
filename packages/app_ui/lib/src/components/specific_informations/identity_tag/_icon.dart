part of 'app_identity_tag_component.dart';

class _Icon extends AppIdentityTagComponent {
  const _Icon({
    required this.icon,
    super.key,
    super.label,
    super.leftBadge,
    super.rightBadge,
    super.onPressed,
    super.size,
  });

  final AppAssetBuilder icon;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      size: size,
      label: label,
      icon: icon,
      country: leftBadge,
      brand: rightBadge,
      onPressed: onPressed,
    );
  }
}
