#! /usr/bin/env bash

echo "== assume role"

ROLE_ARN=$1

ROLE_SESSION_NAME=$2

PROFILE=$3

if [ -z "$ROLE_ARN" ]; then
    echo "There needs to be a role arn"
    exit 1
fi

if [ -z "$ROLE_SESSION_NAME" ]; then
    echo "There needs to be a role session name"
    exit 1
fi

if [ -z "$PROFILE" ]; then
    echo "There needs to be a role session name"
    exit 1
fi

aws sts assume-role \
 --role-arn $ROLE_ARN \
 --role-session-name $ROLE_SESSION_NAME \
 --profile $PROFILE
