import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class CircleAvatarTextItem extends StatelessWidget {
  const CircleAvatarTextItem({
    required this.textItem,
    super.key,
    this.backgroundColor,
  });
  final String textItem;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? context.colorScheme.primaryContainer,
      child: AppTextComponent.titleMedium(textItem),
    );
  }
}
