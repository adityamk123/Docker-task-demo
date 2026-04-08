#!/bin/bash

echo "Step 1: Building Image"
docker build -t adityakhiroji/demo-rep1:dockertest .

#echo "Step 2: Tagging Image"
#docker tag mywebapp adityakhiroji/demo-rep1:dockertest ;

echo "Step 3: Pushing Image"
docker push adityakhiroji/demo-rep1:dockertest ;

echo "Step 4: Stopping Old Container (if exists)..."
#docker stop webapp 2>/dev/null
docker rm -f webapp ;

docker system prune -af ;

echo "Step 5: Running New Container..."
docker run -itd -p 8080:80 --name webapp adityakhiroji/demo-rep1:dockertest

