#!/usr/bin/env bash

set -o pipefail

TOKEN="${1}"

echo "Uploading Coverage Report"
export CODECOV_TOKEN=${TOKEN}
bash <(curl -s https://codecov.io/bash)
