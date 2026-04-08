#!/bin/bash
echo "Installing Netdata and Podman..."
sudo pacman -S --needed netdata podman podman-compose
sudo systemctl enable --now netdata
echo "Deploying Minecraft Server..."
podman-compose up -d
echo "Setup Complete! Visit http://localhost:19999 for metrics."
