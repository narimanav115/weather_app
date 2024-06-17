#!/usr/bin/env bash
set -eux pipefail

dart run build_runner build --delete-conflicting-outputs
dart format .
