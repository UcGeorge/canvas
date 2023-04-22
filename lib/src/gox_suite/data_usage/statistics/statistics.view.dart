import 'package:flutter/material.dart';

import '../../../../util/size_format.util.dart';
import 'components/weekly_chart.dart';

class DataUsageStatistics extends StatelessWidget {
  DataUsageStatistics({super.key});

  final List<double> data = [
    SizeFormatUtil.convertToBytes(
      1,
      SizeUnit.gb,
    ),
    SizeFormatUtil.convertToBytes(
      500,
      SizeUnit.mb,
    ),
    SizeFormatUtil.convertToBytes(
      1.5,
      SizeUnit.gb,
    ),
    SizeFormatUtil.convertToBytes(
      800,
      SizeUnit.mb,
    ),
    SizeFormatUtil.convertToBytes(
      1300,
      SizeUnit.mb,
    ),
    SizeFormatUtil.convertToBytes(
      2,
      SizeUnit.gb,
    ),
    SizeFormatUtil.convertToBytes(
      900,
      SizeUnit.mb,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Data Usage Statistics"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: WeeklyBarChart(data: data),
        ),
      ),
    );
  }
}
