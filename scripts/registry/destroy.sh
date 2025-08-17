#!/bin/bash
source .env
doctl registry delete \
    $REGISTRY_NAME \