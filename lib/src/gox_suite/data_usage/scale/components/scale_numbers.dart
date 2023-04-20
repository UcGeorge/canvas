import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ScaleNumbers extends StatelessWidget {
  const ScaleNumbers({
    super.key,
    required this.radius,
    this.style,
  });

  final double radius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(radius),
      painter: RPSCustomPainter(
        size: Size.square(radius),
        style: style,
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({
    this.style,
    required this.size,
  });

  final Size size;
  final TextStyle? style;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height * .5;

    for (int i = 0; i <= 100; i += 10) {
      final span = TextSpan(
        text: (100 - i).toString(),
        style: style,
      );

      final textPainter = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );

      textPainter.layout(
        minWidth: 0,
        maxWidth: size.width,
      );

      final angle = _sweepValueAngle(_scaledValueAngle(i.toDouble()) + 45);

      final xCenter = (radius * sin(pi * angle));
      final yCenter = (radius * cos(pi * angle));

      final offset = Offset(xCenter + radius, yCenter + radius);

      textPainter.paint(
        canvas,
        offset.copyWith(
          dx: offset.dx - (textPainter.width / 2),
          dy: offset.dy - (textPainter.height / 2),
        ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  double _scaledValueAngle(double value) => (value / 100) * 270;

  double _sweepValueAngle(double value) => (value * .5) / 90;
}
