import 'package:flutter/material.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

part '_infinite_list_view_builder.dart';
part '_infinite_sliver_list_view_builder.dart';
part '_list_view_builder.dart';
part '_sliver_list_view.dart';

abstract class AppListViewComponent extends StatelessWidget {
  const AppListViewComponent({
    required this.itemCount,
    required this.itemBuilder,
    required this.isLoading,
    this.onFetchData,
    super.key,
    this.emptyBuilder,
    this.loadingBuilder,
    this.separatorBuilder,
    this.scrollDirection,
    this.padding,
    this.debounceDuration,
    this.hasReachedMax = false,
    this.hasError = false,
    this.physics,
    this.shrinkWrap,
  });

  const factory AppListViewComponent.list({
    required int itemCount,
    required Widget Function(BuildContext context, int index) itemBuilder,
    Widget Function(BuildContext context)? emptyBuilder,
    Widget Function(BuildContext context, int index)? separatorBuilder,
    Axis? scrollDirection,
    EdgeInsets? padding,
    ScrollPhysics? physics,
    Key? key,
    bool? shrinkWrap,
  }) = _ListViewBuilder;

  const factory AppListViewComponent.sliver({
    required int itemCount,
    required Widget Function(BuildContext context, int index) itemBuilder,
    Widget Function(BuildContext context)? emptyBuilder,
    Widget Function(BuildContext context, int index)? separatorBuilder,
    Key? key,
  }) = _SliverListViewBuilder;

  const factory AppListViewComponent.infinite({
    required int itemCount,
    required Widget Function(BuildContext context, int index) itemBuilder,
    required void Function() onFetchData,
    required bool isLoading,
    Widget Function(BuildContext context)? emptyBuilder,
    Widget Function(BuildContext context)? loadingBuilder,
    Widget Function(BuildContext context, int index)? separatorBuilder,
    Axis? scrollDirection,
    EdgeInsets? padding,
    Duration? debounceDuration,
    ScrollPhysics? physics,
    bool hasReachedMax,
    bool hasError,
    Key? key,
  }) = _InfiniteListViewBuilder;

  const factory AppListViewComponent.infiniteSliver({
    required int itemCount,
    required Widget Function(BuildContext context, int index) itemBuilder,
    required void Function() onFetchData,
    required bool isLoading,
    Widget Function(BuildContext context)? emptyBuilder,
    Widget Function(BuildContext context)? loadingBuilder,
    Widget Function(BuildContext context, int index)? separatorBuilder,
    Duration? debounceDuration,
    bool hasReachedMax,
    bool hasError,
    Key? key,
  }) = _InfiniteSliverListViewBuilder;

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final void Function()? onFetchData;
  final bool isLoading;
  final Widget Function(BuildContext context)? emptyBuilder;
  final Widget Function(BuildContext context)? loadingBuilder;
  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final Axis? scrollDirection;
  final EdgeInsets? padding;
  final Duration? debounceDuration;
  final ScrollPhysics? physics;
  final bool? shrinkWrap;
  final bool hasReachedMax;
  final bool hasError;
}
