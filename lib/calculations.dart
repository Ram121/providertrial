import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Calculations extends ChangeNotifier {
  double result;
  doAddition({double value1, double value2}) {
    result = value1 + value2;
    print(result);
    notifyListeners();
  }
}
