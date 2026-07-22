import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/api_demo/api_demo_screen.dart';
import '../features/counter/counter_screen.dart';
import '../features/home/home_screen.dart';
import '../features/settings/settings_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
      GoRoute(path: '/counter', builder: (_, __) => const CounterScreen()),
      GoRoute(path: '/api-demo', builder: (_, __) => const ApiDemoScreen()),
      GoRoute(path: '/settings', builder: (_, __) => const SettingsScreen()),
    ],
  );
});
