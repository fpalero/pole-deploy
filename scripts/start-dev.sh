#!/bin/bash

# Pull from Github Docker Registry
docker pull ghcr.io/fpalero/poleprojectfrontend:latest
docker pull ghcr.io/fpalero/poleprojectstrapi-dev:latest

# Stop and remove existing containers
docker compose -f ../compose.dev.yaml down

# Pull Docker images (always pull latest and clean cache)
docker compose -f ../compose.dev.yaml pull --no-cache

# Start Docker containers
docker compose -f ../compose.dev.yaml up -d
