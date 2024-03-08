#! /bin/bash
docker build -f Dockerfile.base -t dev-base . \
&& docker build -f Dockerfile.auth -t dev-auth . \
&& docker build -f Dockerfile -t dev .