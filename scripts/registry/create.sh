#!/bin/bash
source .env
doctl registry create \
    $REGISTRY_NAME \
    --region=$REGION \
    --subscription-tier=$REGISTRY_SUBSCRIPTION_TIER
