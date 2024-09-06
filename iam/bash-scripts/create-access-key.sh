#! /usr/bin/env bash

echo "== create access key"

USER_NAME=$1

if [ -z "$USER_NAME" ]; then
    echo "There needs to be a user name"
    exit 1
fi

aws iam create-access-key --user-name $USER_NAME
