#!/bin/bash

# Build image
docker build -t item-app:v1 .

# Lihat image
docker images

# Tag image untuk GHCR
docker tag item-app:v1 ghcr.io/rizkyprayatman/item-app:v1

# Push image ke GHCR
docker push ghcr.io/rizkyprayatman/item-app:v1
