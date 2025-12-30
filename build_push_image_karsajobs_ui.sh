#!/bin/bash

docker build -t ghcr.io/rizkyprayatman/karsajobs-ui:latest .

docker images

docker push ghcr.io/rizkyprayatman/karsajobs-ui:latest
