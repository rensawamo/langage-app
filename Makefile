FVM := $(shell which fvm)
FLUTTER := $(FVM) flutter

# flavor dev
.PHONY: dev
dev:
	cd apps/ko_beginner && $(FLUTTER) run --debug --dart-define=FLAVOR=dev

# flavor prd
.PHONY: prod
prod:
	cd apps/ko_beginner && $(FLUTTER)  run --debug --dart-define=FLAVOR=prod

# アイコンを作成
.PHONY: icon
icon:
	cd apps/ko_beginner && $(FLUTTER) pub run flutter_launcher_icons:main

# test
.PHONY: test
test:
	chmod +x scripts/test.sh
	sh ./scripts/test.sh



# [Android] リリースビルド(難読) 
.PHONY: release_build_android
release_build_android:
	cd apps/ko_beginner && $(FLUTTER) build appbundle --release  --obfuscate --split-debug-info=obfuscate/android --dart-define=FLAVOR=prod


# [iOS] リリースビルド(難読)
.PHONY: release_build_ios
release_build_ios:
	cd apps/ko_beginner && $(FLUTTER)  build ipa --release --obfuscate --split-debug-info=obfuscate/ios --dart-define=FLAVOR=prod --export-options-plist=ExportOptions.plist 


# integration test
.PHONY: integration
integration:
	cd apps && $(FLUTTER) test --dart-define-from-file=dart_defines/dev.env integration_test

# docker up
.PHONY: up
up:
	cd gitea_private && docker-compose up -d

# docker down
.PHONY: down
down:
	cd gitea_private && docker-compose down
