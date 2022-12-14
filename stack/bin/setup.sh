#!/bin/bash
set -eu

docker-compose stop

rm -rf _build deps

BUILD_CMD="docker-compose build"
CONTAINER_NAME="web postgres mariadb"

case "$OSTYPE" in
  darwin*)
    $BUILD_CMD --build-arg UID=1000 --build-arg GID=1000 $CONTAINER_NAME
    ;;
  linux*)
    $BUILD_CMD --build-arg UID=$(id -u) --build-arg GID=$(id -g) $CONTAINER_NAME
    ;;
  *)
    echo "Unknown OS Type: $OSTYPE"
    ;;
esac
