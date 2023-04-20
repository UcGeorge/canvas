import 'package:flutter/material.dart';

import '../../../util/flow.util.dart';
import 'scale/scale.view.dart';

class DataUsage extends StatelessWidget {
  const DataUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Data Usage"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Scale"),
            onTap: () => FlowUtil.moveTo(
              context: context,
              page: const DataUsageScale(),
            ),
          )
        ],
      ),
    );
  }
}
