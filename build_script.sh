#!/bin/bash
# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Upgrade all installed packages to their latest versions
echo "Upgrading installed packages..."
sudo apt-get upgrade

# Install required packages
echo "Installing autoconf and automake..."
sudo apt-get install automake

# Generate configuration scripts
echo "Running aclocal..."
aclocal

echo "Running autoconf..."
autoconf

# Run automake --add-missing to add any missing files
echo "Running automake to add missing files..."
automake --add-missing

# Run configure to prepare the build environment
echo "Running configure script..."
./configure

# Build the project using make
echo "Building the project..."
make

echo "Build completed successfully."
