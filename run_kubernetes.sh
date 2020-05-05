#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=giovannibaratta/udacity_project4_prediction_app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath udacity-project4-predictionapp --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project4-predictionapp 8000:80
