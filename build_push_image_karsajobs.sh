#! /bin/bash

# build with docker image
docker build -t bayudha2/karsajobs:latest .
echo ""

# login to github packages
echo $PAT | docker login ghcr.io --username bayudha2 --password-stdin
echo ""

# push tagged image to github packages
docker push bayudha2/karsajobs:latest
echo ""