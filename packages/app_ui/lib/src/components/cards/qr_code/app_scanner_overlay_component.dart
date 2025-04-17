import 'package:app_ui/src/components/texts/display/app_text_component.dart';
import 'package:app_ui/src/tokens/spacings/app_paddings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

class InvertedClipper extends CustomClipper<Path> {
  InvertedClipper({
    required this.scanArea,
    required this.borderStrokeWidth,
    this.borderRadius = 20.0,
  });
  late Size scanArea;
  late double borderRadius;
  late double borderStrokeWidth;

  @override
  Path getClip(Size size) {
    return Path()
      ..addRect(
        Rect.fromLTWH(
          0,
          0,
          size.width,
          size.height,
        ),
      )
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
            center: Offset(
              size.width / 2,
              size.height / 2.6,
            ),
            width: scanArea.width - borderStrokeWidth * 3,
            height: scanArea.height - borderStrokeWidth * 3,
          ),
          Radius.circular(borderRadius - 2),
        ),
      )
      ..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class AppScannerOverlayComponent extends StatelessWidget {
  AppScannerOverlayComponent({
    super.key,
    String? imagePath,
    this.overlayColor = Colors.black54,
    Size? scanAreaSize,
    double? scanAreaWidth,
    double? scanAreaHeight,
    this.borderColor = Colors.white,
    this.borderRadius = 20,
    this.borderStrokeWidth = 4,
    this.instruction,
    this.isHeightUnder680 = false,
  })  : assert(
          imagePath != null || scanAreaSize != null || (scanAreaWidth != null && scanAreaHeight != null),
          'You must set both scanAreaWidth and scanAreaHeight!',
        ),
        assert(
          (scanAreaSize == null) || ((scanAreaWidth == null) && (scanAreaHeight == null)),
          'You can only set one of scanAreaSize or scanAreaWidth/scanAreaHeight!',
        ) {
    // If scanAreaSize is set, use it over scanAreaWidth and scanAreaHeight
    if (scanAreaSize != null) {
      _scanArea = scanAreaSize;
    } else if (scanAreaWidth != null && scanAreaHeight != null) {
      _scanArea = Size(scanAreaWidth, scanAreaHeight);
    } else {
      _scanArea = null;
    }

    if (imagePath != null) {
      clippedWidget = Image.asset(
        imagePath,
        fit: BoxFit.cover,
        opacity: const AlwaysStoppedAnimation(.9),
      );
    } else {
      clippedWidget = DecoratedBox(decoration: BoxDecoration(color: overlayColor));
    }
  }
  late final Widget clippedWidget;
  final Color? overlayColor;
  late final Size? _scanArea;
  final Color borderColor;
  final double borderRadius;
  final double borderStrokeWidth;
  final String? instruction;
  final bool isHeightUnder680;

  @override
  Widget build(BuildContext context) {
    // If no scanAreaSize or scanAreaWidth/scanAreaHeight are set, use a default
    final standardScanArea = Size.square((MediaQuery.of(context).size.width < 400 || MediaQuery.of(context).size.height < 400) ? 200.0 : 330.0);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            ClipPath(
              clipper: InvertedClipper(
                scanArea: _scanArea ?? standardScanArea,
                borderStrokeWidth: borderStrokeWidth,
                borderRadius: borderRadius,
              ),
              child: SizedBox.expand(
                child: clippedWidget,
              ),
            ),
            Positioned(
              top: (constraints.maxHeight / 2.6) - ((_scanArea ?? standardScanArea).height / 2),
              left: (constraints.maxWidth / 2) - (_scanArea ?? standardScanArea).width / 2,
              child: CustomPaint(
                foregroundPainter: BorderPainter(
                  borderRadius: borderRadius,
                  borderColor: borderColor,
                  borderStrokeWidth: borderStrokeWidth,
                ),
                child: SizedBox(
                  width: _scanArea?.width ?? standardScanArea.width,
                  height: _scanArea?.height ?? standardScanArea.height,
                ),
              ),
            ),
            if (instruction.orNull != null)
              Positioned(
                bottom: isHeightUnder680 ? constraints.maxHeight * 0.15 : constraints.maxHeight * 0.17,
                left: 0,
                right: 0,
                child: Padding(
                  padding: AppPaddings.s24.horizontal,
                  child: Align(
                    child: AppTextComponent.titleMedium(
                      instruction ?? '',
                      textAlign: TextAlign.center,
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

// Creates the white borders
class BorderPainter extends CustomPainter {
  const BorderPainter({
    required this.borderRadius,
    required this.borderColor,
    required this.borderStrokeWidth,
  });
  final double borderRadius;
  final Color borderColor;
  final double borderStrokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final tRadius = 3 * borderRadius;
    final rect = Rect.fromLTWH(
      borderStrokeWidth,
      borderStrokeWidth,
      size.width - 2 * borderStrokeWidth,
      size.height - 2 * borderStrokeWidth,
    );
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));
    final clippingRect0 = Rect.fromLTWH(
      0,
      0,
      tRadius,
      tRadius,
    );
    final clippingRect1 = Rect.fromLTWH(
      size.width - tRadius,
      0,
      tRadius,
      tRadius,
    );
    final clippingRect2 = Rect.fromLTWH(
      0,
      size.height - tRadius,
      tRadius,
      tRadius,
    );
    final clippingRect3 = Rect.fromLTWH(
      size.width - tRadius,
      size.height - tRadius,
      tRadius,
      tRadius,
    );

    final path = Path()
      ..addRect(clippingRect0)
      ..addRect(clippingRect1)
      ..addRect(clippingRect2)
      ..addRect(clippingRect3);

    canvas
      ..clipPath(path)
      ..drawRRect(
        rrect,
        Paint()
          ..color = borderColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = borderStrokeWidth,
      );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class OverlayWithHolePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.black54;
    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()
          ..addRect(
            Rect.fromLTWH(
              0,
              0,
              size.width,
              size.height,
            ),
          ),
        Path()
          ..addOval(
            Rect.fromCircle(
              center: Offset(size.width - 44, size.height - 44),
              radius: 40,
            ),
          )
          ..close(),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
