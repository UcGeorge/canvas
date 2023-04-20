import 'package:flutter/material.dart';

import '../../util/flow.util.dart';
import 'data_usage/data_usage.view.dart';

class GoxSuite extends StatelessWidget {
  const GoxSuite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Gox Suite"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Data Usage"),
            onTap: () => FlowUtil.moveTo(
              context: context,
              page: const DataUsage(),
            ),
          )
        ],
      ),
    );
  }
}
