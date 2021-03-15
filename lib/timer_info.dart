import 'package:flutter/material.dart';

class TimerInfo extends ChangeNotifier {
  int _remainingTime = 60;

  int get getRemainingTime => _remainingTime;

  updateRemainingTime() {
    _remainingTime--;
    notifyListeners();
  }
}
