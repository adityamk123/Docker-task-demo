#!/bin/bash

echo "Step 1: Building Image"
docker build -t mywebapp .

echo "Step 2: Tagging Image"
docker tag mywebapp <your-username>/mywebapp:latest

echo "Step 3: Pushing Image"
docker push <your-username>/mywebapp:latest

echo "All steps completed!"

