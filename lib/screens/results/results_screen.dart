import 'package:flutter/material.dart';

import 'components/body.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);
  static String routeName = "/results_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terrax", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 7, 92, 59),
        // backgroundColor: Color.fromARGB(255, 2, 4, 37),
      ),  
      body: const Body(),
    );
  }
}
