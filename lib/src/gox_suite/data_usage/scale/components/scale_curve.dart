import 'dart:math';

import 'package:flutter/material.dart';

class ScaleCurve extends StatelessWidget {
  const ScaleCurve({
    super.key,
    required this.size,
    this.color,
    this.thickness = 22,
    required this.value,
  });

  final Color? color;
  final Size size;
  final double thickness;
  final double value;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: RPSCustomPainter(
        color: color,
        thickness: thickness,
        value: value,
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({
    this.color,
    required this.thickness,
    required this.value,
  });

  final Color? color;
  final double thickness;
  final double value;

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.addArc(
      Rect.fromCircle(
        center: Offset(size.height * .5, size.height * .5),
        radius: size.height * .5,
      ),
      pi * .75,
      pi * _sweepAngle,
    );

    Paint paint0Fill = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round;
    paint0Fill.color = color ?? const Color(0xff19233E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  double get _scaledValue => (value / 100) * 270;

  double get _sweepAngle => (_scaledValue * .5) / 90;
}
