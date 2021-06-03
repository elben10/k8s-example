#! /usr/bin/env bash

set -e

# Helm repositories 
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

# Testing
skaffold build --profile development --file-output /tmp/build.json
skaffold deploy --build-artifacts /tmp/build.json
kubectl wait --for=condition=available --timeout=600s deployment/frontend
kubectl describe pods
skaffold test --build-artifacts /tmp/build.json
skaffold delete