#!/bin/bash

docker build -t ghcr.io/rizkyprayatman/karsajobs:latest .

docker images

docker push ghcr.io/rizkyprayatman/karsajobs:latest
