import 'package:flutter/material.dart';

import 'components/scale.dart';

class DataUsageScale extends StatelessWidget {
  const DataUsageScale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Data Usage Scale"),
      ),
      body: const Center(
        child: Scale(value: 70),
      ),
    );
  }
}
