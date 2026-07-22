# Architecture — starter-mobile-flutter

## Opinionated choices

### 1. Riverpod 2 as the sole state manager

- Compile-safe (`ref.watch`, no BuildContext lookup at read time).
- Providers are composable and testable via `ProviderContainer`.
- The starter uses `StateNotifier` for the counter (no codegen needed to compile). Switch to `@riverpod` code-generated providers as your app grows.

### 2. go_router for declarative routing

`GoRouter` is Flutter's recommended router, matches the file-based routing model of the other Skilluv starters.

### 3. Dio + Provider-injected client

`Dio` is more feature-complete than `package:http` (interceptors, cancellation, form data). Injecting the client through a Provider makes it trivial to swap in a mock for tests.

### 4. Freezed available but not required

`freezed` and `json_serializable` are declared as dev deps so you can add immutable data classes without extra setup — but nothing generated is shipped, so the starter builds without running codegen first.

### 5. Material 3 dark theme

Aligned with the other Skilluv starters. Change `SkilluvTheme.dark()` to expose a light/dark toggle when needed.

## What's out of scope

- Auth flows (add `flutter_appauth` or a package matching your IdP).
- Local DB (add `drift` or `sqflite` when needed).
- Deep linking beyond in-app go_router (add `app_links` for OS-level links).
- Sentry / crash reporting (add `sentry_flutter`).
