#! /usr/bin/env bash

echo "== delete bucket"

BUCKET_NAME=$1

if [ -z "$BUCKET_NAME" ]; then
    echo "There needs to be a bucket name"
    exit 1
fi


aws s3api delete-bucket \
    --bucket $BUCKET_NAME \
