import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'scale_curve.dart';
import 'scale_dail.dart';
import 'scale_dail_bg.dart';
import 'scale_numbers.dart';

class Scale extends StatefulWidget {
  const Scale({
    super.key,
    required this.value,
  });

  final double value;

  @override
  State<Scale> createState() => _ScaleState();
}

class _ScaleState extends State<Scale> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late Animation<double> curve;
  double value = 0;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: 3000.ms,
      vsync: this,
    );

    curve = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticOut,
    );

    animation = Tween<double>(
      begin: 0,
      end: widget.value,
    ).animate(curve)
      ..addListener(() {
        setState(() {
          value = animation.value;
        });
      });

    controller.forward();
  }

  double get _scaledValue => ((widget.value / 100) * 270) - 135;

  double get _rotationEnd => _scaledValue / 360;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const ScaleCurve(
          size: Size.square(250),
          color: Color(0xffDDE7FF),
          value: 100,
          thickness: 30,
        ),
        ScaleCurve(
          size: const Size.square(250),
          color: const Color(0xff19233E),
          value: value,
          thickness: 30,
        ),
        const ScaleDailBg(size: Size.square(85)),
        const ScaleDail(
          size: Size.square(102),
        ).animate().rotate(
              delay: 150.ms,
              curve: Curves.elasticOut,
              duration: 3300.ms,
              begin: -.375,
              end: _rotationEnd,
            ),
        const ScaleNumbers(
          radius: 180,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value.toInt().toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
            const Text(
              "Mbps",
              style: TextStyle(
                color: Color(0xff556575),
                fontSize: 9,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
