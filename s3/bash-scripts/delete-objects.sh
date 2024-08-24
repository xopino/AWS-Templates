#! /usr/bin/env bash

echo "== delete objects"

BUCKET_NAME=$1

if [ -z "$BUCKET_NAME" ]; then
    echo "There needs to be a bucket name"
    exit 1
fi


aws s3api list-objects-v2 \
    --bucket $BUCKET_NAME \
    --query Contents[].Key \
    | jq -n '{Objects: [inputs | .[] | {Key: .}]}' > /tmp/delete_objects.json

 aws s3api delete-objects \
     --bucket $BUCKET_NAME \
     --delete file:///tmp/delete_objects.json
