#! /usr/bin/env bash

set -e

kubectl exec deploy/api -- pytest
kubectl exec deploy/frontend -- npm test -- --watchAll=false