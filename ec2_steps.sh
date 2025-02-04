#!/bin/bash

# Update package lists
sudo apt update -y

# Install Docker
sudo apt install -y docker.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to the Docker group
sudo usermod -aG docker $USER
newgrp docker  # Apply group changes immediately

# Install Docker Compose
DOCKER_COMPOSE_URL="https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)"
sudo curl -L "$DOCKER_COMPOSE_URL" -o /usr/local/bin/docker-compose

# Make Docker Compose executable
sudo chmod +x /usr/local/bin/docker-compose

# Verify installation
docker-compose --version
