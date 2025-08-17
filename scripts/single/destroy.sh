#!/bin/bash
source .env
./scripts/cluster/destroy.sh
./scripts/registry/destroy.sh
