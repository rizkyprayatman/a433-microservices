#!/bin/bash

docker build -t ghcr.io/rizkyprayatman/shipping-service:latest .

docker images

docker push ghcr.io/rizkyprayatman/shipping-service:latest
