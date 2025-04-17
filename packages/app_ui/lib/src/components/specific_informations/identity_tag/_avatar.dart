part of 'app_identity_tag_component.dart';

class _Avatar extends AppIdentityTagComponent {
  const _Avatar({
    super.key,
    super.label,
    super.leftBadge,
    super.rightBadge,
    super.onPressed,
    super.size,
  });

  @override
  Widget build(BuildContext context) {
    return _Builder(
      label: label,
      country: leftBadge,
      brand: rightBadge,
      onPressed: onPressed,
    );
  }
}
