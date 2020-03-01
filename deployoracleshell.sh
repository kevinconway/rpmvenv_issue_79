#!/usr/bin/env bash

docker build \
    -t "local/test/rpmvenv/deploy/oracle" \
    -f "deployoracle.Dockerfile" \
    .

docker run \
    --volume "$(pwd -L):/build" \
    --workdir="/build" \
    --entrypoint="/bin/bash" \
    -ti "local/test/rpmvenv/deploy/oracle"
