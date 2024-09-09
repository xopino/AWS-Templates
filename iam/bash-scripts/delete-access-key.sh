#! /usr/bin/env bash

echo "== delete access key"

USER_NAME=$1
ACCESS_KEY_ID=$2


if [ -z "$USER_NAME" ]; then
    echo "There needs to be a user name"
    exit 1
fi

if [ -z "$ACCESS_KEY_ID" ]; then
    echo "There needs to be a ACCESS_KEY_ID"
    exit 1
fi

 
aws iam delete-access-key \
 --user-name $USER_NAME \
 --access-key-id $ACCESS_KEY_ID 
