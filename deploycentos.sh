#!/usr/bin/env bash

docker build \
    -t "local/test/rpmvenv/deploy/centos" \
    -f "deploycentos.Dockerfile" \
    .

docker run \
    --volume "$(pwd -L):/build" \
    --workdir="/build" \
    -ti "local/test/rpmvenv/deploy/centos"
