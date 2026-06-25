#!/bin/bash

# Ensure the container stops gracefully if interrupted
trap 'exit 0' SIGTERM

# Set fallback environment variables if they aren't provided by the platform
export VERSION=${VERSION:-"11"}
export RAM_SIZE=${RAM_SIZE:-"12G"}
export CPU_CORES=${CPU_CORES:-"6"}
export DISK_SIZE=${DISK_SIZE:-"500G"}

echo "Booting genuine Windows $VERSION with $CPU_CORES Cores and $RAM_SIZE RAM..."

# Launch the base dockur/windows entrypoint script
# This handles the KVM virtualization, Windows setup, and RDP activation.
exec /run/run.sh
