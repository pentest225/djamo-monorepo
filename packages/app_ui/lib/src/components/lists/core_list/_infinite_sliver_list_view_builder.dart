part of 'app_list_view_component.dart';

class _InfiniteSliverListViewBuilder extends AppListViewComponent {
  const _InfiniteSliverListViewBuilder({
    required super.itemCount,
    required super.itemBuilder,
    required super.onFetchData,
    required super.isLoading,
    super.emptyBuilder,
    super.loadingBuilder,
    super.separatorBuilder,
    super.debounceDuration,
    super.hasError,
    super.hasReachedMax,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverInfiniteList(
      itemCount: itemCount,
      onFetchData: onFetchData!,
      itemBuilder: itemBuilder,
      isLoading: isLoading,
      emptyBuilder: emptyBuilder,
      loadingBuilder: loadingBuilder,
      separatorBuilder: separatorBuilder,
      debounceDuration: debounceDuration ?? const Duration(milliseconds: 800),
    );
  }
}
