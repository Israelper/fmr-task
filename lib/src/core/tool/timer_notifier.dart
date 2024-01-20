// Dart imports:
import 'dart:async';

class TimerNotifier {
  final int total;
  final Function(int) onChanged;
  int? count = 0;

  Timer? _timer;

  bool get isActive => _timer?.isActive == true;

  TimerNotifier(this.onChanged, {this.total = 60});

  void startTimer() {
    _timer?.cancel();
    count = total;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (count == 0) {
          onChanged(0);
          _stopTimer();
          return;
        }
        count = count! - 1;
        onChanged(count!);
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
    count = null;
  }
}
