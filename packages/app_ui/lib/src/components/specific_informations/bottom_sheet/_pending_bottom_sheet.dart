part of 'app_bottom_sheet_component.dart';

class _PendingBottomSheet extends AppBottomSheetComponent {
  const _PendingBottomSheet({
    required super.title,
    this.loadingWidget,
    super.showCloseButton = false,
  });
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    return _AppBottomSheetBuilder(
      title: title!,
      showCloseButton: showCloseButton,
      loadingWidget: loadingWidget ??
          Column(
            children: [
              const AppProgressIndicatorComponent.circular(),
              AppGaps.ver.s24,
            ],
          ),
      autoHeight: autoHeight,
      height: height,
    );
  }
}
