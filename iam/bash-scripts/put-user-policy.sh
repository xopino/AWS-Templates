#! /usr/bin/env bash

echo "== add inline policy to user"

USER_NAME=$1
POLICY_NAME=$2
POLICY_DOCUMENT=$3


if [ -z "$USER_NAME" ]; then
    echo "There needs to be a user name"
    exit 1
fi

if [ -z "$POLICY_NAME" ]; then
    echo "There needs to be a POLICY_NAME"
    exit 1
fi

if [ -z "$POLICY_DOCUMENT" ]; then
    echo "There needs to be a POLICY_DOCUMENT"
    exit 1
fi
 
aws iam put-user-policy \
 --user-name $USER_NAME \
 --policy-name $POLICY_NAME \
 --policy-document file://$POLICY_DOCUMENT 
