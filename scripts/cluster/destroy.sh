#!/bin/sh
dotcl kubernetes clusters delete \
    $CLUSTER_NAME
    --dangerous