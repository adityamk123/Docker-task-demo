#!/bin/bash

echo "Step 1: Building Image"
docker build -t mywebapp .

echo "Step 2: Tagging Image"
docker tag mywebapp adityakhiroji/demo-rep1:Dockertest

echo "Step 3: Pushing Image"
docker push adityakhiroji/demo-rep1:Dockertest

echo "All steps completed!"

