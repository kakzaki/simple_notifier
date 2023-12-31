import 'package:flutter_test/flutter_test.dart';
import 'package:simple_notifier_example/counter/counter_1_controller.dart';

void main() {
  // Test for Counter1Controller
  test('Test Counter1Controller', () {
    // Test the increment method
    Counter1Controller.increment();
    expect(Counter1Controller.count.value, 1);

    // Test the reset method
    Counter1Controller.reset();
    expect(Counter1Controller.count.value, 0);
  });
}
