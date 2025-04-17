import 'package:domain/src/_core/_core.dart';

typedef LoansExclusionReasonEntities = List<LoanExclusionReasonEntity>;

class LoanExclusionReasonEntity extends BaseEntity {
  const LoanExclusionReasonEntity({
    this.emoji = emptyString,
    this.title = emptyString,
    this.level = emptyString,
    this.subText = emptyString,
    this.name = emptyString,
    this.description = emptyString,
  });

  factory LoanExclusionReasonEntity.fromString(String input) {
    final fields = <String, String>{};

    final regex = RegExp(r'(\w+):\s*([^,}]+)');
    for (final match in regex.allMatches(input)) {
      fields[match.group(1)!] = match.group(2)!.trim();
    }

    // Handle special case for subText with embedded commas
    if (fields.containsKey('subText')) {
      final subTextRegex = RegExp(r'subText:\s*([^}]+)');
      final subTextMatch = subTextRegex.firstMatch(input);
      if (subTextMatch != null) {
        fields['subText'] = subTextMatch.group(1)!.trim();
      }
    }

    return LoanExclusionReasonEntity(
      emoji: fields['emoji'] ?? '',
      title: fields['title'] ?? '',
      level: fields['level'] ?? '',
      subText: fields['subText'] ?? '',
      name: fields['name'] ?? '',
      description: fields['description'] ?? '',
    );
  }

  static LoansExclusionReasonEntities fromErrorMessage(String? input) {
    final message = input ?? '[]';
    final rawString = message.substring(1, message.length - 1);

    var rawItems = rawString.split('}, {');

    rawItems = rawItems.map((item) => '{${item.trim()}}').toList();

    final reasons = rawItems.map(LoanExclusionReasonEntity.fromString).toList();

    return reasons;
  }

  final String emoji;
  final String title;
  final String level;
  final String subText;
  final String name;
  final String description;

  static const empty = LoanExclusionReasonEntity();

  bool get isEmpty => this == empty;

  @override
  List<Object?> get props => [
        emoji,
        title,
        level,
        subText,
        name,
        description,
      ];
}

extension LoanExclusionReasonEntityDomainExtension on LoanExclusionReasonEntity {
  bool get isMegaExclusion => name == 'mega_exclusion';
}
