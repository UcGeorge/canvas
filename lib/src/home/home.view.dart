import 'package:flutter/material.dart';

import '../../util/flow.util.dart';
import '../gox_suite/gox_suite.view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Gox Suite"),
            onTap: () => FlowUtil.moveTo(
              context: context,
              page: const GoxSuite(),
            ),
          )
        ],
      ),
    );
  }
}
