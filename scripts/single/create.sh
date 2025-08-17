#!/bin/sh
source .env
./scripts/cluster/create.sh
./scripts/registry/create.sh
doctl kubernetes cluster registry $REGISTRY_NAME
