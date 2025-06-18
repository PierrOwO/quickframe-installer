#!/bin/bash

# Installer for QuickFrame CLI on Unix-like systems

INSTALL_PATH="/usr/local/bin/quickframe"

echo "Installing QuickFrame CLI..."

# Copy CLI script
cp quickframe "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

echo "QuickFrame CLI installed successfully."
echo "You can now run: quickframe new <project-name>"
echo
echo "You may now delete the installer folder manually if you wish."