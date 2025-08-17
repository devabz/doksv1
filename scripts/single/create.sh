#!/bin/bash
source .env
./scripts/cluster/create.sh
./scripts/registry/create.sh
doctl kubernetes cluster registry add $CLUSTER_NAME
