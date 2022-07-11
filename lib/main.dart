import 'package:flutter/material.dart';
import 'package:terrax/routes.dart';
import 'package:terrax/screens/test_terrax/test_terrax_screen.dart';
import 'package:terrax/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Terrax',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: TestTerraxScreen.routeName,
      routes: routes,
    );
  }
}
