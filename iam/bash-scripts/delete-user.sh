#! /usr/bin/env bash

echo "== delete user"

USER_NAME=$1


if [ -z "$USER_NAME" ]; then
    echo "There needs to be a user name"
    exit 1
fi
 
aws iam delete-user \
 --user-name $USER_NAME \
