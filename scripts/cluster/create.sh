#!/bin/sh
doctl kubernetes clusters create \
    $CLUSTER_NAME \
    --region $REGION \
    --size $DROPLET_SIZE \
    --count $DROPLET_COUNT \
    --1-clicks $PACKAGES