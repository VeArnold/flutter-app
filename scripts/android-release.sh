#!/usr/bin/env bash

set -o pipefail

# Build information (can be extended with flavors)
BUILD_NUMBER="${1}"
BUILD_TYPE="${2}"
APP_TYPE="${3-bundle}"

echo "(#${BUILD_NUMBER}) Creating ${APP_TYPE} for ${BUILD_TYPE}"

if [[ "${BUILD_TYPE}" == "release" ]]; then
    if [[ "${APP_TYPE}" == "bundle" ]]; then
        flutter build appbundle --release --build-number=${BUILD_NUMBER}
    else
        flutter build apk --release --build-number=${BUILD_NUMBER}
    fi
else
    if [[ "${APP_TYPE}" == "bundle" ]]; then
        flutter build appbundle --debug --build-number=${BUILD_NUMBER}
    else
        flutter build apk --debug --build-number=${BUILD_NUMBER}
    fi
fi
