import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/router.dart';
import 'shared/theme.dart';

void main() {
  runApp(const ProviderScope(child: SkilluvStarterApp()));
}

class SkilluvStarterApp extends ConsumerWidget {
  const SkilluvStarterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Skilluv starter',
      theme: SkilluvTheme.dark(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
