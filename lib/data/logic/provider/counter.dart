import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  
  /// productIndex : quantity
  Map<int, int> _counter = {};

  int getCount(int index) {
    return _counter[index] ?? 0;
    
  }

  void increment(int index) {
    _counter[index] = (_counter[index] ?? 0) + 1;
    notifyListeners();
  }

  void decrement(int index) {
    if ((_counter[index] ?? 0) > 0) {
      _counter[index] = _counter[index]! - 1;
      notifyListeners();
    }
  }
}