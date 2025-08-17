#!/bin/bash
source .env
doctl kubernetes clusters delete \
    $CLUSTER_NAME \
    --dangerous