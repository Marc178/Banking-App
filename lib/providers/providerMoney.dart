import 'package:flutter/cupertino.dart';

class Amount extends ChangeNotifier {
  int savings = 100000;
  
  int get getsavings => savings;

  void subSavings(int amount) {
    savings = savings - amount;
    notifyListeners();
  }

  static toInt() {}
}