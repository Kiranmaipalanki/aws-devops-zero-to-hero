#!/bin/bash
set -e

# Get container IDs running on port 5000
containerid=$(docker ps --filter "publish=5000" -q)

if [ -n "$containerid" ]; then
  docker rm -f $containerid
  echo "Stopped container(s) using port 5000"
else
  echo "No container running on port 5000"
fi
