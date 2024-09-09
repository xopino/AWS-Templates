#! /usr/bin/env bash

echo "== delete user policy"

USER_NAME=$1
POLICY_NAME=$2


if [ -z "$USER_NAME" ]; then
    echo "There needs to be a user name"
    exit 1
fi

if [ -z "$POLICY_NAME" ]; then
    echo "There needs to be a POLICY_NAME"
    exit 1
fi

 
aws iam delete-user-policy \
 --user-name $USER_NAME \
 --policy-name $POLICY_NAME 
