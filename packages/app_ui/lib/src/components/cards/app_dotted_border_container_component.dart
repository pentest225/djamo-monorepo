import 'package:flutter/material.dart';

class AppDottedBorderContainerComponent extends StatelessWidget {
  const AppDottedBorderContainerComponent({
    required this.child,
    required this.radius,
    required this.strokeWidth,
    required this.dashSpace,
    required this.dashColor,
    this.dashWidth,
    this.direction = DottedBorderDirection.all,
    super.key,
  });
  final Widget child;
  final double radius;
  final double strokeWidth;
  final double dashSpace;
  final Color dashColor;
  final double? dashWidth;
  final DottedBorderDirection direction;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _AppDottedBorderComponent(
        radius: radius,
        strokeWidth: strokeWidth,
        dashSpace: dashSpace,
        dashColor: dashColor,
        dashWidth: dashWidth ?? 4,
        direction: direction,
      ),
      child: child,
    );
  }
}

class _AppDottedBorderComponent extends CustomPainter {
  _AppDottedBorderComponent({
    required this.radius,
    required this.strokeWidth,
    required this.dashSpace,
    required this.dashColor,
    required this.dashWidth,
    required this.direction,
  });
  final double radius;
  final double strokeWidth;
  final double dashSpace;
  final double dashWidth;
  final Color dashColor;
  final DottedBorderDirection direction;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = dashColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = switch (direction) {
      DottedBorderDirection.bottom => Path()
        ..moveTo(0, size.height)
        ..lineTo(size.width, size.height),
      _ => Path()
        ..addRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(0, 0, size.width, size.height),
            Radius.circular(radius),
          ),
        ),
    };

    final dashPath = Path();

    var distance = 7.0;

    for (final pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashPath.addPath(
          pathMetric.extractPath(distance, distance + dashWidth),
          Offset.zero,
        );
        distance += dashWidth + dashSpace;
      }
    }

    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

enum DottedBorderDirection {
  top,
  bottom,
  left,
  right,
  all,
}
