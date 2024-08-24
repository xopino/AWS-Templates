#! /usr/bin/env bash

echo "== list objects"

BUCKET_NAME=$1

if [ -z "$BUCKET_NAME" ]; then
    echo "There needs to be a bucket name"
    exit 1
fi



aws s3api list-objects-v2 --bucket $BUCKET_NAME
