#!/bin/bash

BIN="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# make sure script exits if any process exits unsuccessfully
set -e


# parse config file
IMAGE=$("$BIN"/read-config.sh "FORCE_IMAGE")

echo "$IMAGE"
# pull latest image
docker pull "$IMAGE"

exit 0

