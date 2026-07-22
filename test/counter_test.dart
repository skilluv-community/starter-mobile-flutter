import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starter_mobile_flutter/features/counter/counter_screen.dart';

void main() {
  test('counter increments and resets', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final notifier = container.read(counterProvider.notifier);
    expect(container.read(counterProvider), 0);

    notifier.increment();
    notifier.increment();
    expect(container.read(counterProvider), 2);

    notifier.decrement();
    expect(container.read(counterProvider), 1);

    notifier.reset();
    expect(container.read(counterProvider), 0);
  });
}
