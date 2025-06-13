#!/bin/bash

echo "Installing QuickFrame CLI..."

# Ensure script fails on error
set -e

# Check if 'quickframe' file exists
if [ ! -f "quickframe" ]; then
  echo "Error: 'quickframe' file not found in the current directory."
  exit 1
fi

# Make sure the file is executable
chmod +x quickframe

# Ensure /usr/local/bin exists
if [ ! -d "/usr/local/bin" ]; then
  echo "Creating /usr/local/bin..."
  sudo mkdir -p /usr/local/bin
fi

# Copy to /usr/local/bin
sudo cp quickframe /usr/local/bin/quickframe

# Confirm installation
echo "QuickFrame CLI installed successfully."
echo "You can now run 'quickframe' from anywhere in your terminal."
