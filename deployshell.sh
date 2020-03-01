#!/usr/bin/env bash

docker build \
    -t "local/test/rpmvenv/deploy" \
    -f "deploy.Dockerfile" \
    .

docker run \
    --volume "$(pwd -L):/build" \
    --workdir="/build" \
    --entrypoint="/bin/bash" \
    -ti "local/test/rpmvenv/deploy"
