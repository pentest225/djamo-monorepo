part of 'app_list_view_component.dart';

class _ListViewBuilder extends AppListViewComponent {
  const _ListViewBuilder({
    required super.itemCount,
    required super.itemBuilder,
    super.isLoading = false,
    super.emptyBuilder,
    super.separatorBuilder,
    super.scrollDirection,
    super.padding,
    super.physics,
    super.key,
    super.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    final hasEmptyBuilder = emptyBuilder != null;
    final hasSeparator = separatorBuilder != null;
    if (itemCount == 0 && hasEmptyBuilder) {
      return emptyBuilder!(context);
    }
    if (hasSeparator) {
      return ListView.separated(
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder!,
        padding: padding,
        physics: physics,
        scrollDirection: scrollDirection ?? Axis.vertical,
        shrinkWrap: shrinkWrap ?? false,
      );
    }
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      padding: padding,
      physics: physics,
      scrollDirection: scrollDirection ?? Axis.vertical,
      shrinkWrap: shrinkWrap ?? false,
    );
  }
}
