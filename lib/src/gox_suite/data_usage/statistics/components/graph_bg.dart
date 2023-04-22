import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../../util/size_format.util.dart';

class GraphBg extends StatelessWidget {
  const GraphBg({
    super.key,
    required this.interval,
  });

  final double interval;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) => index * interval)
                    .map((e) => Text(
                          SizeFormatUtil.formatBytes(e),
                          style: const TextStyle(
                            fontSize: 12,
                            height: 1.364,
                          ),
                        ))
                    .toList()
                    .reversed
                    .toList(),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.filled(6, null)
                      .map((e) => SizedBox(
                            height: 16,
                            child: Align(
                              alignment: Alignment.center,
                              child: DottedLine(
                                lineThickness: 1.0,
                                dashLength: 8.0,
                                dashColor:
                                    const Color(0xff5879FD).withOpacity(.2),
                                dashGapLength: 8.0,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          "",
          style: TextStyle(
            fontSize: 12,
            height: 1.364,
          ),
        ),
      ],
    );
  }
}
