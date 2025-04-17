import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';

/// Wrapper for M3 Search Bar with our specific in house behavior, styling and theming
abstract class AppSearchBarComponent extends StatelessWidget {
  /// Default constructor for search bar
  const AppSearchBarComponent({
    this.resultsBuilder,
    super.key,
    this.placeholder,
    this.actions,
    this.onChanged,
    this.useFullScreenView,
  });

  /// Constructor for search bar with results appearing in modal view
  factory AppSearchBarComponent.withModalView({
    required SuggestionsBuilder resultsBuilder,
    Key? key,
    String? placeholder,
    List<Widget>? actions,
    void Function(String)? onChanged,
  }) =>
      _SearchBarWithAnchor(
        key: key,
        resultsBuilder: resultsBuilder,
        placeholder: placeholder,
        actions: actions,
        onChanged: onChanged,
        useFullScreenView: false,
      );

  /// Constructor for search bar with results appearing in full screen view
  factory AppSearchBarComponent.withFullScreenView({
    required SuggestionsBuilder resultsBuilder,
    Key? key,
    String? placeholder,
    List<Widget>? actions,
    void Function(String)? onChanged,
  }) =>
      _SearchBarWithAnchor(
        key: key,
        resultsBuilder: resultsBuilder,
        placeholder: placeholder,
        actions: actions,
        onChanged: onChanged,
        useFullScreenView: true,
      );

  /// Constructor used to display a basic search bar without suggestions
  factory AppSearchBarComponent.basic({
    Key? key,
    String? placeholder,
    void Function(String)? onChanged,
  }) =>
      _BasicSearchBar(
        key: key,
        placeholder: placeholder,
        onChanged: onChanged,
      );

  /// Placeholder text to be displayed on the search bar
  final String? placeholder;

  /// Actions widgets to be displayed on the search bar
  final List<Widget>? actions;

  /// Callback when the search bar text is changed
  final void Function(String)? onChanged;

  /// Suggestions builder for the search bar
  final SuggestionsBuilder? resultsBuilder;

  /// Whether to use full screen view or not
  final bool? useFullScreenView;
}

class _BasicSearchBar extends AppSearchBarComponent {
  const _BasicSearchBar({
    super.key,
    super.placeholder,
    super.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBarTheme(
      data: SearchBarThemeData(
        surfaceTintColor: WidgetStateProperty.all(context.colorScheme.onSurface.withOpacity(0.12)),
        overlayColor: WidgetStateProperty.all(context.colorScheme.onSurface.withOpacity(0.08)),
        backgroundColor: WidgetStateProperty.all(context.colorScheme.surfaceContainerLow),
        elevation: WidgetStateProperty.all(0),
        hintStyle: WidgetStateProperty.all(context.theme.textTheme.bodyLarge),
        textStyle: WidgetStateProperty.all(context.theme.textTheme.bodyLarge),
        constraints: BoxConstraints.tightFor(
          height: AppSizes.h.s56,
        ),
      ),
      child: SearchBar(
        onChanged: onChanged,
        hintText: placeholder,
        leading: Icon(
          Icons.search,
          color: context.colorScheme.onSurface,
          size: AppSizes.f.s24,
        ),
      ),
    );
  }
}

class _SearchBarWithAnchor extends AppSearchBarComponent {
  const _SearchBarWithAnchor({
    required super.resultsBuilder,
    super.key,
    super.placeholder,
    super.actions,
    super.onChanged,
    super.useFullScreenView,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBarTheme(
      data: SearchBarThemeData(
        surfaceTintColor: WidgetStateProperty.all(context.colorScheme.onSurface.withOpacity(0.12)),
        overlayColor: WidgetStateProperty.all(context.colorScheme.onSurface.withOpacity(0.08)),
        backgroundColor: WidgetStateProperty.all(context.colorScheme.surfaceContainerLow),
        elevation: WidgetStateProperty.all(0),
        hintStyle: WidgetStateProperty.all(context.theme.textTheme.bodyLarge),
        textStyle: WidgetStateProperty.all(context.theme.textTheme.bodyLarge),
      ),
      child: SearchAnchor.bar(
        suggestionsBuilder: resultsBuilder!,
        isFullScreen: useFullScreenView,
        barHintText: placeholder,
        onChanged: onChanged,
        barLeading: Icon(
          Icons.search,
          color: context.colorScheme.onSurface,
          size: AppSizes.f.s24,
        ),
        barTrailing: actions,
        viewHintText: placeholder,
        viewElevation: 0,
        viewBackgroundColor: context.colorScheme.surfaceContainerLowest,
        viewHeaderHintStyle: context.theme.textTheme.bodyLarge,
        viewHeaderTextStyle: context.theme.textTheme.bodyLarge,
        keyboardType: TextInputType.text,
      ),
    );
  }
}
