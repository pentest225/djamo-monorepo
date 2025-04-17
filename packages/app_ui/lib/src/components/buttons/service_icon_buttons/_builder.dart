part of 'app_service_icon_button_component.dart';

class _ServiceIconButtonBuilder extends StatelessWidget {
  const _ServiceIconButtonBuilder({
    required this.appIconButtonComponent,
    required this.serviceText,
  });

  final AppIconButtonComponent appIconButtonComponent;
  final String serviceText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appIconButtonComponent,
        AppGaps.ver.s8,
        AppTextComponent.bodyMedium(
          serviceText,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
