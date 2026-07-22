import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/api_client.dart';

final _repoProvider = FutureProvider.autoDispose.family<int, String>((ref, repo) async {
  final dio = ref.watch(apiClientProvider);
  final resp = await dio.get<Map<String, dynamic>>('/repos/$repo');
  return (resp.data?['stargazers_count'] as int?) ?? 0;
});

class ApiDemoScreen extends ConsumerWidget {
  const ApiDemoScreen({super.key});

  static const _repo = 'flutter/flutter';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(_repoProvider(_repo));

    return Scaffold(
      appBar: AppBar(title: const Text('API demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Fetches github.com/$_repo star count via Dio + Riverpod.'),
            const SizedBox(height: 24),
            async.when(
              data: (stars) => Text(
                '⭐ $stars',
                style: const TextStyle(fontSize: 32, color: Color(0xFF34D399)),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Text('Error: $e', style: const TextStyle(color: Colors.redAccent)),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => ref.invalidate(_repoProvider(_repo)),
              child: const Text('Reload'),
            ),
          ],
        ),
      ),
    );
  }
}
