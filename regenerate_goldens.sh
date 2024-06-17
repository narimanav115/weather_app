#!/usr/bin/env bash
set -eux pipefail

flutter test --update-goldens --tags=golden
