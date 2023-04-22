import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BarChartBar extends StatelessWidget {
  const BarChartBar({
    super.key,
    required this.constraints,
    required this.valueFraction,
    required this.label,
    required this.value,
    required this.selected,
  });

  final BoxConstraints constraints;
  final String label;
  final String value;
  final double valueFraction;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: (constraints.maxHeight - 28) * valueFraction,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    duration: 150.ms,
                    height: (constraints.maxHeight - 28) * valueFraction,
                    width: 24,
                    decoration: BoxDecoration(
                      color: selected
                          ? const Color(0xffC6D1FF)
                          : const Color(0xff5879FD),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ).animate().scaleY(
                        alignment: Alignment.bottomCenter,
                        delay: 150.ms,
                        duration: 300.ms,
                      ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: selected ? null : 0,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xff5879FD),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.364,
                        color: Colors.white,
                      ),
                    ),
                  ).animate(target: selected ? 1 : 0).scaleXY(
                        duration: 150.ms,
                        begin: 0,
                        end: 1,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              height: 1.364,
            ),
          ),
        ],
      ),
    );
  }
}
