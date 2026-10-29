#!/bin/bash
set -euo pipefail

echo "🚀 Starting CachyOS Ultimate Minecraft Deploy..."

# Security preflight: do not install packages, enable services, or launch
# containers until a local RCON credential has been supplied.
if [[ ! -f ".env" ]]; then
    echo "❌ Missing .env. Copy .env.example to .env and set a random RCON_PASSWORD first." >&2
    echo "   Generate one with: openssl rand -hex 32" >&2
    exit 1
fi

if ! grep -Eq '^RCON_PASSWORD=.{32,}$' .env; then
    echo "❌ RCON_PASSWORD must be set to a random value of at least 32 characters in .env." >&2
    echo "   Generate one with: openssl rand -hex 32" >&2
    exit 1
fi

# Verify environment before installing anything.
if ! grep -qi "cachyos" /etc/os-release; then
    echo "⚠️ Warning: Not running on CachyOS. Performance results may vary."
fi

echo "📦 Installing Podman and Netdata..."
sudo pacman -S --needed netdata podman podman-compose git -y

echo "⚙️ Initializing Metrics..."
sudo systemctl enable --now netdata

echo "🏗️ Building Container..."
if [[ ! -f "compose.yaml" ]]; then
    echo "❌ Error: compose.yaml is missing from this directory!" >&2
    exit 1
fi

podman-compose up -d

echo "✅ Deployment Successful!"
echo "📊 Monitor Hardware: http://localhost:19999"
echo "🎮 Server Logs: podman logs -f cachyos-mc-server"
