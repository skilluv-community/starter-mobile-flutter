# Architecture — starter-mobile-flutter

## Choix opinionated

### 1. Riverpod 2 comme seul state manager

- Compile-safe (`ref.watch`, pas de lookup BuildContext au read).
- Providers composables et testables via `ProviderContainer`.
- Le starter utilise `StateNotifier` (pas de codegen requis pour compiler).

### 2. go_router pour le routing déclaratif

Router recommandé Flutter, aligné avec le file-based routing des autres starters.

### 3. Dio + client injecté via Provider

Dio plus complet que `package:http` (interceptors, cancel, form data). Injection Provider = mock trivial en tests.

### 4. Freezed dispo mais pas requis

`freezed` et `json_serializable` en dev deps ; rien de généré n'est livré, donc le starter build sans codegen préalable.

### 5. Material 3 dark

Aligné avec les autres starters Skilluv.

## Hors scope

- Auth (`flutter_appauth` ou package IdP).
- DB locale (`drift` ou `sqflite`).
- Deep linking hors go_router (`app_links`).
- Crash reporting (`sentry_flutter`).
