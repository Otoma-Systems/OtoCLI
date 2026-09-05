#!/usr/bin/env bash

# 1. Automatically find the active ZeroTier network interface IP
# This looks for typical ZeroTier interface naming schemes (zt+ or zt*)
ZT_IP=$(ip -4 addr show dev $(ip link | grep -oE 'zt[a-z0-9]+' | head -n 1) 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# Fallback check if the interface query failed
if [ -z "$ZT_IP" ]; then
    echo "❌ Error: No active ZeroTier interface or IP address found."
    echo "Make sure ZeroTier is running and joined to a network."
    exit 1
fi

echo "✅ Found ZeroTier IP: $ZT_IP"
echo "🚀 Launching Docker Compose binding to ZeroTier..."

# 2. Export the variable and run Docker Compose seamlessly
export ZT_IP