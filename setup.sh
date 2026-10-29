#!/bin/bash
set -e

echo "🚀 Starting CachyOS Ultimate Minecraft Deploy..."

# Security preflight: fail before installing packages or enabling services.
if [ ! -f ".env" ]; then
    echo "❌ Missing .env. Copy .env.example to .env and set a random RCON_PASSWORD first."
    exit 1
fi
if ! grep -Eq '^RCON_PASSWORD=.{32,}
if ! grep -q "cachyos" /etc/os-release; then
    echo "⚠️ Warning: Not running on CachyOS. Performance results may vary."
fi

echo "📦 Installing Podman and Netdata..."
sudo pacman -S --needed netdata podman podman-compose git -y

echo "⚙️ Initializing Metrics..."
sudo systemctl enable --now netdata

echo "🏗️ Building Container..."
if [ ! -f "compose.yaml" ]; then
    echo "❌ Error: compose.yaml is missing from this directory!"
    exit 1
fi

podman-compose up -d

echo "✅ Deployment Successful!"
echo "📊 Monitor Hardware: http://localhost:19999"
echo "🎮 Server Logs: podman logs -f cachyos-mc-server"
 .env; then
    echo "❌ RCON_PASSWORD must be set to a random value of at least 32 characters in .env."
    echo "   Generate one with: openssl rand -hex 32"
    exit 1
fi

# Verify Environment
if ! grep -q "cachyos" /etc/os-release; then
    echo "⚠️ Warning: Not running on CachyOS. Performance results may vary."
fi

echo "📦 Installing Podman and Netdata..."
sudo pacman -S --needed netdata podman podman-compose git -y

echo "⚙️ Initializing Metrics..."
sudo systemctl enable --now netdata

echo "🏗️ Building Container..."
if [ ! -f "compose.yaml" ]; then
    echo "❌ Error: compose.yaml is missing from this directory!"
    exit 1
fi

podman-compose up -d

echo "✅ Deployment Successful!"
echo "📊 Monitor Hardware: http://localhost:19999"
echo "🎮 Server Logs: podman logs -f cachyos-mc-server"
