#!/bin/bash

# Installer for QuickFrame CLI on Unix-like systems

INSTALL_PATH="/usr/local/bin/quickframe"

echo "Installing QuickFrame CLI..."

# Copy CLI script
cp quickframe "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

echo "QuickFrame CLI installed successfully."
echo "You can now run: quickframe new <project-name>"

read -p "Do you want to delete the installer folder? (y/N): " answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
    INSTALLER_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

    cd ~
    rm -rf "$INSTALLER_ROOT"

    echo "Installer folder deleted: $INSTALLER_ROOT"
else
    echo "Installer folder was not deleted. You can remove it manually later."
fi