.PHONY: setup
setup:
	flutter pub get

.PHONY: build-web
build-web:
	flutter build web --web-renderer html

.PHONY: run-story
run-story:
	flutter run widgetbook/main.dart -d macOS

.PHONY: run-web
run-chrome:
	flutter run -d chrome

.PHONY: test
test:
	flutter test
