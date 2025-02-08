#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists
sudo apt update -y

# Install Docker and dependencies
sudo apt install -y docker.io

# Start and enable Docker service
sudo systemctl enable --now docker

# Add current user to the Docker group (avoiding permission errors)
sudo usermod -aG docker $USER

# Install Docker Compose (latest stable version)
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K[^"]+')
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Make Docker Compose executable
sudo chmod +x /usr/local/bin/docker-compose

# Apply the group change without logging out and back in
newgrp docker <<EOF
docker-compose --version
EOF

# Verify Docker and Docker Compose installation
docker --version
docker-compose --version

echo "Docker and Docker Compose have been successfully installed!"
