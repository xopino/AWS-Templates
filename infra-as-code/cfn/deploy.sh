#! /usr/bin/env bash

echo "== deploy via AWS Cloud Formation"

STACK_NAME=$1
TEMPLATE_FILE=$2

if [ -z "$STACK_NAME" ]; then
    echo "There needs to be a stack name"
    exit 1
fi

if [ -z "$TEMPLATE_FILE" ]; then
    echo "There needs to be a file name"
    exit 1
fi


DEFAULT_REGION="eu-south-2"

aws cloudformation deploy \
    --template-file $TEMPLATE_FILE \
    --region $DEFAULT_REGION \
    --stack-name $STACK_NAME \
    --capabilities CAPABILITY_IAM
