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

# 2. Define the .env file path, the key, and its new value
ENV_FILE="~/OtoCLI/Management/.env"
KEY_NAME="ZT_IP"

# 3. Ensure the .env file exists
touch "$ENV_FILE"

# 4. Update the value or append it if it doesn't exist
if grep -q "^$KEY_NAME=" "$ENV_FILE"; then
    # If the key exists, replace its value
    # Using '|' as a separator in sed to safely handle values with slashes (like URLs or paths)
    sed -i "s|^$KEY_NAME=.*|$KEY_NAME=\"$ZT_IP\"|" "$ENV_FILE"
else
    # If the key does not exist, append it to the file
    echo "$KEY_NAME=\"$ZT_IP\"" >> "$ENV_FILE"
fi