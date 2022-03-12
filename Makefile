.PHONY: setup
setup:
	flutter pub get

.PHONY: build-web
build-web:
	flutter build web --web-renderer html

.PHONY: run-story
run-story:
	monarch run

.PHONY: run-web
run-chrome:
	flutter run -d chrome

.PHONY: test
test:
	flutter test
