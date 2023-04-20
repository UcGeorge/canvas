import 'package:flutter/material.dart';

class ScaleDail extends StatelessWidget {
  const ScaleDail({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(24, 24),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5290490, size.height * 0.2566069);
    path_0.lineTo(size.width * 0.5000000, 0);
    path_0.lineTo(size.width * 0.4709510, size.height * 0.2566069);
    path_0.cubicTo(
        size.width * 0.3492784,
        size.height * 0.2709745,
        size.width * 0.2549020,
        size.height * 0.3744667,
        size.width * 0.2549020,
        size.height * 0.5000010);
    path_0.cubicTo(
        size.width * 0.2549020,
        size.height * 0.6353647,
        size.width * 0.3646363,
        size.height * 0.7450990,
        size.width * 0.5000000,
        size.height * 0.7450990);
    path_0.cubicTo(
        size.width * 0.6353637,
        size.height * 0.7450990,
        size.width * 0.7450980,
        size.height * 0.6353647,
        size.width * 0.7450980,
        size.height * 0.5000010);
    path_0.cubicTo(
        size.width * 0.7450980,
        size.height * 0.3744667,
        size.width * 0.6507216,
        size.height * 0.2709745,
        size.width * 0.5290490,
        size.height * 0.2566069);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff111C38).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.transparent;
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.5000000, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
