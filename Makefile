CODECOV_TOKEN ?= empty
BUILD_TYPE ?= release

.PHONY: analyze assemble bundle coverage dependencies unit-test update-dependencies upload-coverage all

analyze:
	flutter analyze

assemble:
	flutter build apk --debug

bundle:
	./scripts/android-release.sh ${BUILD_NUMBER} ${BUILD_TYPE}

coverage: unit-test upload-coverage

dependencies:
	flutter packages pub get

unit-test:
	flutter test --coverage

update-dependencies:
	flutter packages pub upgrade

upload-coverage:
	./scripts/upload-coverage.sh ${CODECOV_TOKEN}

all: dependencies update-dependencies analyze assemble bundle coverage unit-test