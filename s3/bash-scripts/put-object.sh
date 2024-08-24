#! /usr/bin/env bash

echo "== list objects"

BUCKET_NAME=$1
FILENAME=$2
OBJECT_KEY=$(basename "$FILENAME")

if [ -z "$BUCKET_NAME" ]; then
    echo "There needs to be a bucket name"
    exit 1
fi

if [ -z "$FILENAME" ]; then
    echo "There needs to be a file name"
    exit 1
fi



aws s3api put-object \
    --bucket $BUCKET_NAME \
    --body $FILENAME \
    --key $OBJECT_KEY
