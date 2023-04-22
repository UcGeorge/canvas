import 'package:flutter/material.dart';

import '../../../../../util/size_format.util.dart';
import 'bar.dart';
import 'graph_bg.dart';

class WeeklyBarChart extends StatefulWidget {
  const WeeklyBarChart({
    super.key,
    required this.data,
  });

  final List<double> data;

  @override
  State<WeeklyBarChart> createState() => _WeeklyBarChartState();
}

class _WeeklyBarChartState extends State<WeeklyBarChart> {
  final List<String> weeklyLabels = ["Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"];

  final double padding = SizeFormatUtil.convertToBytes(500, SizeUnit.mb);

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final tempData = [...widget.data];
    final maxValue = (tempData..sort()).last;
    double range = 0 + maxValue + padding;
    double interval = range / 5;

    return SizedBox(
      height: 204,
      child: Stack(
        children: [
          GraphBg(interval: interval),
          SizedBox(
            height: 204,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    Opacity(
                      opacity: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) => index * interval)
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
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            widget.data.length,
                            (index) => GestureDetector(
                              onTap: () => setState(() {
                                selectedIndex = index;
                              }),
                              child: BarChartBar(
                                selected: selectedIndex == index,
                                value: SizeFormatUtil.formatBytes(
                                    widget.data[index]),
                                valueFraction: widget.data[index] / range,
                                constraints: constraints,
                                label: weeklyLabels[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
