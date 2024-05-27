import 'dart:async';

import 'package:flutter/cupertino.dart';

class Debouncer<T> {
  final Duration duration;
  Timer? _timer;

  Debouncer(this.duration);
  void cancelTimer() {
    _timer?.cancel();
  }

  void call(VoidCallback value) {
    _timer?.cancel();
    _timer = Timer(duration, value);
  }
}
