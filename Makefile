.PHONY: dev codegen test lint fmt clean apk help

help:
	@echo "Targets: dev / codegen / test / lint / fmt / apk / clean"

dev:
	flutter pub get
	flutter run

codegen:
	flutter pub get
	dart run build_runner build --delete-conflicting-outputs

test:
	flutter test

lint:
	flutter analyze

fmt:
	dart format .

apk:
	flutter build apk --release

clean:
	flutter clean
