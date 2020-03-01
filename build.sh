#!/usr/bin/env bash

docker build \
    -t "local/test/rpmvenv/build" \
    -f "build.Dockerfile" \
    .

docker run \
    --volume "$(pwd -L):/build" \
    --user="$(id -u ${USER}):$(id -g ${USER})" \
    --workdir="/build" \
    -ti "local/test/rpmvenv/build"
