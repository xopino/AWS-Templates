#! /usr/bin/env bash

echo "== list container instances"

CLUSTER_NAME=$1

if [ -z "$CLUSTER_NAME" ]; then
    echo "There needs to be a cluster name"
    exit 1
fi

aws ecs list-container-instances --cluster $CLUSTER_NAME

