#! /usr/bin/env bash

echo "== list buckets"

aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[] | .Name'
