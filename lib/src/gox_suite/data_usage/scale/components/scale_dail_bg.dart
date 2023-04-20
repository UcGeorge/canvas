import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ScaleDailBg extends StatelessWidget {
  const ScaleDailBg({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * .5, 0),
      Offset(size.width * .5, size.height),
      [
        const Color(0xffECECEC).withOpacity(1),
        const Color(0xffD9D9D9).withOpacity(0),
      ],
      [0, 1],
    );
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
