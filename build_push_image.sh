#! /bin/bash

# build image with dockerfile
docker build -t item-app:v1 .
echo ""

# see list image
docker images
echo ""

# login to github packages
echo $PAT | docker login ghcr.io --username bayudha2 --password-stdin
echo ""

# tag created image to push to registry
docker tag item-app:v1 ghcr.io/bayudha2/item-app:v1
echo ""

# push tagged image to github packages
docker push ghcr.io/bayudha2/item-app:v1
echo ""
