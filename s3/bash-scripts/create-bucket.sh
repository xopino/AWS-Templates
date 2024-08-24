#! /usr/bin/env bash

echo "== create bucket"

BUCKET_NAME=$1
DEFAULT_REGION="eu-south-2"

if [ -z "$BUCKET_NAME" ]; then
    echo "There needs to be a bucket name"
    exit 1
fi


# https://docs.aws.amazon.com/cli/latest/reference/s3api/create-bucket.html
# Bucket name must be unique across ALL AWS accounts

aws s3api create-bucket --bucket $BUCKET_NAME --create-bucket-configuration="LocationConstraint=$DEFAULT_REGION"
