#!/bin/bash

# Pull from Github Docker Registry
docker pull ghcr.io/fpalero/poleprojectfrontend:latest
docker pull ghcr.io/fpalero/poleprojectstrapi-dev:latest

# Stop and remove existing containers
docker compose -f ../compose.yaml.dev down

# Pull Docker images (always pull latest and clean cache)
docker compose -f ../compose.yaml.dev pull --no-cache

# Start Docker containers
docker compose -f ../compose.yaml.dev up
