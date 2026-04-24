#!/bin/bash
set -e # Exit immediately if a command fails

echo "🚀 Initializing CachyOS Ultimate Minecraft Deploy..."

# Check for CachyOS/Arch
if [ ! -f /etc/arch-release ]; then
    echo "❌ Error: This script is optimized for CachyOS/Arch Linux."
    exit 1
fi

echo "📦 Installing Dependencies..."
sudo pacman -S --needed netdata podman podman-compose git

echo "⚙️ Enabling Metrics (Netdata)..."
sudo systemctl enable --now netdata

echo "🏗️ Deploying Podman Container..."
if [ -f "compose.yaml" ]; then
    podman-compose up -d
else
    echo "❌ Error: compose.yaml not found in directory!"
    exit 1
fi

echo "✅ Setup Complete!"
echo "📊 Metrics: http://localhost:19999"
echo "📜 Logs: podman logs -f cachyos-mc-server"
