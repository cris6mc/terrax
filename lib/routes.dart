import 'package:flutter/widgets.dart';
import 'package:terrax/screens/test_terrax/test_terrax_screen.dart';
import 'package:terrax/screens/results/results_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  TestTerraxScreen.routeName: (context) => const TestTerraxScreen(),
  ResultsScreen.routeName: (context) => const ResultsScreen(),
};
