import 'package:app_ui/src/core/hooks/hooks.dart';
import 'package:app_ui/src/modules/common/atoms/atoms.dart';
import 'package:flutter/material.dart';

Future<void> useShowImage(BuildContext context, String imageUrl, {String? heroTag}) async {
  return useShowModalBottomSheet<void>(
    context,
    showDragHandle: false,
    useSafeArea: true,
    enableDrag: true,
    builder: (_) {
      return _AppImageView(imageUrl: imageUrl, heroTag: heroTag);
    },
    routeName: 'image',
  );
}

class _AppImageView extends StatelessWidget {
  const _AppImageView({
    required this.imageUrl,
    this.heroTag,
  });
  final String imageUrl;
  final String? heroTag;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: CloseButton(),
        ),
        Expanded(
          child: InteractiveViewer(
            child: AppNetworkImageWidget(
              useHero: true,
              heroTag: heroTag,
              imageUrl: imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
