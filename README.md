# starter-mobile-flutter

> A Skilluv starter — Flutter 3.24 + Riverpod 2 + Dio + go_router + Freezed.

[![CI](https://github.com/skilluv-community/starter-mobile-flutter/actions/workflows/ci.yml/badge.svg)](https://github.com/skilluv-community/starter-mobile-flutter/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)
[![Skilluv](https://img.shields.io/badge/skilluv-community-emerald)](https://skilluv.io)

## English

### What this is

A production-oriented Flutter starter with:

- **Flutter 3.24** + **Dart 3.5** + Material 3
- **Riverpod 2** for state (with `flutter_riverpod` primitives; codegen wired for when you need it)
- **Dio** for HTTP with a Provider-injected client
- **go_router** for declarative routing
- **Freezed** + **json_serializable** available for data classes when you wire codegen
- Tests: `flutter_test` widget tests + `integration_test`

### Quickstart

```bash
git clone git@github.com:skilluv-community/starter-mobile-flutter.git
cd starter-mobile-flutter
flutter pub get
flutter run
```

To run the code generators (freezed, json_serializable, riverpod_generator):

```bash
dart run build_runner build --delete-conflicting-outputs
```

### Structure

```
lib/
  main.dart
  app/router.dart               go_router config
  features/
    home/                       Home screen
    counter/                    Riverpod StateNotifier demo
    api_demo/                   Dio + Riverpod FutureProvider demo
    settings/
  shared/theme.dart             Material 3 dark theme
  data/api_client.dart          Dio Provider
test/                           widget + unit tests
integration_test/               e2e boot test
```

### Docs

- [`docs/en/getting-started.md`](./docs/en/getting-started.md)
- [`docs/en/architecture.md`](./docs/en/architecture.md)

---

## Français

Starter Flutter production-ready. Voir [`docs/fr/getting-started.md`](./docs/fr/getting-started.md).

```bash
git clone git@github.com:skilluv-community/starter-mobile-flutter.git
cd starter-mobile-flutter
flutter pub get
flutter run
```

---

## License

MIT — see [LICENSE](./LICENSE).
