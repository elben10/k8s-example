#! /usr/bin/env bash

set -e

skaffold build --profile development --file-output /tmp/build.json
skaffold deploy --build-artifacts /tmp/build.json
skaffold test --build-artifacts /tmp/build.json
skaffold delete