import 'package:equatable/equatable.dart';

/// Selection Items
typedef SelectionItems = List<SelectionItem>;

/// Selection Item
class SelectionItem extends Equatable {
  /// Constructor for SelectionItem.
  const SelectionItem({
    required this.identifier,
    required this.label,
    this.formattedLabel,
    this.description = '',
  });

  /// The identifier for the selection item.
  final String identifier;

  /// The label for the selection item.
  final String label;
  final String? formattedLabel;

  final String description;

  static const empty = SelectionItem(
    identifier: '',
    label: '',
  );

  @override
  List<Object?> get props => [
        identifier,
        label,
        formattedLabel,
        description,
      ];
}
