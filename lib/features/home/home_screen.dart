import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skilluv starter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Flutter 3.24 + Riverpod 2 + Dio + go_router + Freezed.',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => context.push('/counter'),
              icon: const Icon(Icons.exposure_plus_1),
              label: const Text('Counter'),
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: () => context.push('/api-demo'),
              icon: const Icon(Icons.cloud_download),
              label: const Text('API demo'),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => context.push('/settings'),
              icon: const Icon(Icons.settings),
              label: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
