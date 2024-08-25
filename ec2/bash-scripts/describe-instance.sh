#! /usr/bin/env bash

echo "== describe instance"

INSTANCE_ID=$1

if [ -z "$INSTANCE_ID" ]; then
    echo "There needs to be an instance id"
    exit 1
fi

aws ec2 describe-instances --instance-ids $INSTANCE_ID

