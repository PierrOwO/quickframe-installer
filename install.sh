#!/bin/bash

# Installer for QuickFrame CLI on Unix-like systems

INSTALL_PATH="/usr/local/bin/quickframe"

echo "Installing QuickFrame CLI..."

# Copy CLI script
cp quickframe "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

echo "QuickFrame CLI installed successfully."
echo "You can now run: quickframe new <project-name>"

# Zapytaj użytkownika, czy usunąć folder instalatora
read -p "Do you want to delete the installer folder? (y/N): " answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
    cd  
    rm -rf "$SCRIPT_DIR"
    echo "Installer folder deleted."
else
    echo "Installer folder was not deleted. You can remove it manually later."
fi