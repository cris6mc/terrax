import 'package:flutter/material.dart';

import 'components/body.dart';

class TestTerraxScreen extends StatelessWidget {
  const TestTerraxScreen({Key? key}) : super(key: key);
  static String routeName = "/test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      body: const Body(),
    );
  }
}
