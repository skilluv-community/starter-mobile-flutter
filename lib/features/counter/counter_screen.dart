import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Simple StateNotifier — no codegen needed so the starter compiles without
// running build_runner first.
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() => state = state + 1;
  void decrement() => state = state - 1;
  void reset() => state = 0;
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(counterProvider);
    final notifier = ref.read(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Value: $value', style: const TextStyle(fontSize: 24, fontFamily: 'monospace')),
            Text('Doubled: ${value * 2}', style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 24),
            FilledButton(onPressed: notifier.increment, child: const Text('Increment')),
            const SizedBox(height: 8),
            OutlinedButton(onPressed: notifier.decrement, child: const Text('Decrement')),
            const SizedBox(height: 8),
            TextButton(onPressed: notifier.reset, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
