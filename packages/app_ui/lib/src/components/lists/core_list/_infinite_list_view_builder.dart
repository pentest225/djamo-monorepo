part of 'app_list_view_component.dart';

class _InfiniteListViewBuilder extends AppListViewComponent {
  const _InfiniteListViewBuilder({
    required super.itemCount,
    required super.itemBuilder,
    required super.onFetchData,
    required super.isLoading,
    super.emptyBuilder,
    super.loadingBuilder,
    super.separatorBuilder,
    super.scrollDirection,
    super.padding,
    super.debounceDuration,
    super.physics,
    super.hasReachedMax,
    super.hasError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfiniteList(
      itemCount: itemCount,
      onFetchData: onFetchData!,
      itemBuilder: itemBuilder,
      isLoading: isLoading,
      hasReachedMax: hasReachedMax,
      hasError: hasError,
      emptyBuilder: emptyBuilder,
      loadingBuilder: loadingBuilder,
      separatorBuilder: separatorBuilder,
      scrollDirection: scrollDirection ?? Axis.vertical,
      padding: padding ?? EdgeInsets.zero,
      debounceDuration: debounceDuration ?? const Duration(milliseconds: 800),
      physics: physics,
    );
  }
}
