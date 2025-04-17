part of 'app_identity_tag_component.dart';

class _Monogram extends AppIdentityTagComponent {
  const _Monogram({
    required this.monogram,
    super.key,
    super.label,
    super.leftBadge,
    super.rightBadge,
    super.onPressed,
    super.size,
    this.monogramColor,
    this.backgroundColor,
  }) : assert(monogram.length > 0 && monogram.length <= 2, 'Monogram must have 1 or 2 characters');

  final String monogram;
  final Color? monogramColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      label: label,
      monogram: monogram,
      country: leftBadge,
      brand: rightBadge,
      onPressed: onPressed,
      size: size,
      monogramColor: monogramColor,
      backgroundColor: backgroundColor,
    );
  }
}
