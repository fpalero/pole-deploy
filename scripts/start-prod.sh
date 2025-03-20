#!/bin/bash

# Pull from Github Docker Registry
docker pull ghcr.io/fpalero/poleprojectfrontend:latest
docker pull ghcr.io/fpalero/poleprojectstrapi:latest

# Stop and remove existing containers
docker compose -f ../compose.yaml down

# Pull Docker images (always pull latest and clean cache)
docker compose -f ../compose.yaml pull --no-cache

# Start Docker containers
docker compose -f ../compose.yaml up
