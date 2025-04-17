part of 'app_list_view_component.dart';

class _SliverListViewBuilder extends AppListViewComponent {
  const _SliverListViewBuilder({
    required super.itemCount,
    required super.itemBuilder,
    super.isLoading = false,
    super.emptyBuilder,
    super.separatorBuilder,
    super.hasReachedMax,
    super.hasError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hasEmptyBuilder = emptyBuilder != null;
    final hasSeparator = separatorBuilder != null;

    if (itemCount == 0 && hasEmptyBuilder) {
      return SliverToBoxAdapter(child: emptyBuilder!(context));
    }
    if (hasSeparator) {
      return SliverList.separated(
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder!,
        itemCount: itemCount,
      );
    }

    return SliverList.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
