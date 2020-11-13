import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertrial/calculations.dart';

import 'homePage.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => Calculations())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
