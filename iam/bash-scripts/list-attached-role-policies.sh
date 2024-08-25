#! /usr/bin/env bash

echo "== describe instance"

ROLE_NAME=$1

if [ -z "$ROLE_NAME" ]; then
    echo "There needs to be a role name"
    exit 1
fi

aws iam list-attached-role-policies --role-name $ROLE_NAME


