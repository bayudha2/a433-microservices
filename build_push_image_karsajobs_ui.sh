#! /bin/bash

# build image with dockerfile
docker build -t bayudha2/karsajobs-ui:latest .
echo ""

# login to github packages
echo $PAT | docker login ghcr.io --username bayudha2 --password-stdin
echo ""

# tag created image to push to registry
docker tag bayudha2/karsajobs-ui:latest ghcr.io/bayudha2/karsajobs-ui:latest
echo ""

# push tagged image to github packages
docker push ghcr.io/bayudha2/karsajobs-ui:latest
echo ""