// Dart imports:
import 'dart:async';

class TimerNotifier {
  final int total;
  final Function(int)? onChanged;
  int? count = 0;

  Timer? _timer;

  bool get isActive => _timer?.isActive == true && (count ?? 0) > 0;

  TimerNotifier(this.onChanged, {this.total = 10});

  void startTimer() {
    _timer?.cancel();
    count = total;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (count == 0) {
          _stopTimer();
          if (onChanged != null) {
            onChanged!(count!);
          }
          return;
        }
        count = count! - 1;
        if (onChanged != null) {
          onChanged!(count!);
        }
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
    count = null;
  }
}
