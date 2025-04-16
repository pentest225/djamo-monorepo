import 'package:flutter/material.dart';
import 'package:code/code.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? color;

  const CommonButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(
        CodeUtils.formatText(label),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}