part of 'app_illustration_card_component.dart';

class _LevelIndicator extends AppIllustrationCardComponent {
  const _LevelIndicator({
    required super.title,
    required super.description,
    required this.level,
    required this.maxLevel,
    super.isIllustrationBackgroundColored,
    super.key,
  });

  final int level;
  final int maxLevel;

  @override
  Widget build(BuildContext context) {
    return _Builder(
      title: title,
      description: description,
      action: AppLevelIndicatorComponent(
        level: level,
        maxLevel: maxLevel,
      ),
      isIllustrationBackgroundColored: isIllustrationBackgroundColored,
    );
  }
}
