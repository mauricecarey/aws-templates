#!/bin/env bash

curl -H 'Content-Type: application/json' -X PUT --data "@-" http://localhost:8500/v1/catalog/register << EOF
{
  "Node": "$1",
  "Address": "$(dig +short $1)",
  "Service": {
    "ID": "postgres1",
    "Service": "postgres",
    "Tags": [
      "master"
    ],
    "Port": $2
  }
}
EOF
