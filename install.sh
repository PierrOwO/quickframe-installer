#!/bin/bash

# Installer for QuickFrame CLI on Unix-like systems

# Path where the quickframe script will be placed
INSTALL_PATH="/usr/local/bin/quickframe"

echo "Installing QuickFrame CLI..."

# Copy the CLI script to /usr/local/bin
cp quickframe "$INSTALL_PATH"

# Ensure it is executable
chmod +x "$INSTALL_PATH"
rm -rf quickframe-installer
echo "QuickFrame CLI installed successfully."
echo "You can now run: quickframe new <project-name>"