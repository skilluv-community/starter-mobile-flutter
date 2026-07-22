# Getting started — starter-mobile-flutter

## Prerequisites

- Flutter SDK 3.24+ (Dart 3.5+)
- Android Studio + Android SDK (API 35) for Android builds
- Xcode 16 + CocoaPods for iOS builds (macOS only)

`flutter doctor` should show all green for the platforms you care about.

## First run

```bash
flutter pub get
flutter run
```

Choose a target device from the picker (Android emulator, physical device, iOS simulator, web).

## Codegen

Freezed / json_serializable / riverpod_generator are wired but no generated files are shipped — the app compiles without them. When you add annotated classes, run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Commit the resulting `*.g.dart` and `*.freezed.dart` files.

## Tests

```bash
flutter test                    # widget + unit
flutter test integration_test   # e2e (requires a device)
```

## Building a release APK

```bash
flutter build apk --release
```

The APK lands under `build/app/outputs/flutter-apk/`. For Play Store distribution, use `flutter build appbundle`.
