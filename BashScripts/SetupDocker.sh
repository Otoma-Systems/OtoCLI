#!/usr/bin/env bash

set -e

echo -e "\nStarting Docker Setup\n"

# Check if running as root
if [ "$EUID" -eq 0 ]; then
    SUDO=""
else
    SUDO="sudo"
fi

# Check OS
if [ ! -f /etc/os-release ]; then
    echo "Unable to detect operating system."
    exit 1
fi

. /etc/os-release

if [ "$ID" != "ubuntu" ]; then
    echo "This script is intended for Ubuntu."
    exit 1
fi

echo "Detected Ubuntu $VERSION_ID ($UBUNTU_CODENAME)"

# Update system
$SUDO apt-get update

# Install prerequisites
$SUDO apt-get install -y ca-certificates curl

# Remove conflicting packages if present
$SUDO apt-get remove -y \
    docker.io \
    docker-compose \
    docker-compose-v2 \
    docker-doc \
    docker-buildx \
    podman-docker \
    containerd \
    runc \
    2>/dev/null || true

# Create keyrings directory
$SUDO install -m 0755 -d /etc/apt/keyrings

# Add Docker GPG key
$SUDO curl -fsSL \
    https://download.docker.com/linux/ubuntu/gpg \
    -o /etc/apt/keyrings/docker.asc

$SUDO chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
$SUDO tee /etc/apt/sources.list.d/docker.sources > /dev/null <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: ${UBUNTU_CODENAME:-$VERSION_CODENAME}
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

# Update repositories
$SUDO apt-get update

# Install Docker Engine
$SUDO apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

# Enable Docker at boot
$SUDO systemctl enable docker.service
$SUDO systemctl enable containerd.service

# Start Docker
$SUDO systemctl start docker

# Add current user to docker group
if [ "$EUID" -ne 0 ]; then
    $SUDO usermod -aG docker "$USER"
fi

echo -e "\nDocker version:"
$SUDO docker --version

echo -e "\nDocker Compose version:"
$SUDO docker compose version

echo -e "\nDocker service status:"
$SUDO systemctl is-active docker

echo -e "\nDocker Setup Finished Successfully!\n"

if [ "$EUID" -ne 0 ]; then
    echo "IMPORTANT: Log out and log back in for the docker group change to take effect."
    echo "Alternatively run: newgrp docker"
fi