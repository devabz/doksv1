#!/bin/sh
doctl registry create \
    $REGISTRY_NAME \
    --region $REGION
