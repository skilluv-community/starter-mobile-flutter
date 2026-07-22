# Démarrage — starter-mobile-flutter

## Prérequis

- Flutter SDK 3.24+ (Dart 3.5+)
- Android Studio + SDK API 35 pour Android
- Xcode 16 + CocoaPods pour iOS (macOS uniquement)

`flutter doctor` doit être vert.

## Premier lancement

```bash
flutter pub get
flutter run
```

## Codegen

Freezed / json_serializable / riverpod_generator câblés mais aucun fichier généré livré. Lancer quand tu ajoutes des classes annotées :

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Tests

```bash
flutter test
flutter test integration_test
```

## Build APK release

```bash
flutter build apk --release
```
