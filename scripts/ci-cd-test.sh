#! /usr/bin/env bash

set -e

# Helm repositories 
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

# Testing
skaffold build --profile development --file-output /tmp/build.json
skaffold deploy --build-artifacts /tmp/build.json

bash scripts/test.sh

skaffold delete