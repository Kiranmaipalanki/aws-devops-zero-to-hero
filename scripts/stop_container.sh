#!/bin/bash
set -e

# Find container using port 5000
containerid=$(docker ps --filter "publish=5000" -q)

if [ -n "$containerid" ]; then
  docker rm -f $containerid
else
  echo "No container running on port 5000."
fi
