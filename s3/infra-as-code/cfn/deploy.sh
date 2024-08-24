#! /usr/bin/env bash

echo "== deploy s3 bucket via Cloud Formation CFN"

STACK_NAME=$1

if [ -z "$STACK_NAME" ]; then
    echo "There needs to be a stack name"
    exit 1
fi


DEFAULT_REGION="eu-south-2"

aws cloudformation deploy \
    --template-file template.yaml \
    --region $DEFAULT_REGION \
    --stack-name $STACK_NAME
