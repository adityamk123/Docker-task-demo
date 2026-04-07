#!/bin/bash

echo "Step 1: Building Image"
docker build -t mywebapp .

echo "Step 2: Tagging Image"
docker tag mywebapp adityakhiroji/demo-rep1:Dockertest

echo "Step 3: Pushing Image"
docker push adityakhiroji/demo-rep1:Dockertest

echo "Step 4: Stopping Old Container (if exists)..."
docker stop webapp 2>/dev/null
docker rm webapp 2>/dev/null

echo "Step 5: Running New Container..."
docker run -d -p 8080:80 --name webapp adityakhiroji/demo-rep1:Dockertest

echo "✅ Deployment Complete!"

