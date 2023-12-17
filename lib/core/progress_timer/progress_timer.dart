import 'dart:async';

import 'package:flutter/material.dart';

class TimerModel {
  final ValueNotifier<double> progress = ValueNotifier(60);
  bool isTimerActive = false;
  void startTimer() {
    if (isTimerActive) {
      return;
    }
    const duration = Duration(seconds: 1);
    Timer.periodic(duration, (Timer timer) {
      if (progress.value > 0) {
        progress.value -= 1;
      } else {
        timer.cancel();
        isTimerActive = false;
      }
    });
    isTimerActive = true;
  }
}
