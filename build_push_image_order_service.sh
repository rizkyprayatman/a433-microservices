#!/bin/bash

docker build -t ghcr.io/rizkyprayatman/order-service:latest .

docker images

docker push ghcr.io/rizkyprayatman/order-service:latest
