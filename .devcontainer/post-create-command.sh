#!/bin/bash

# Update and install system dependencies
sudo apt-get update
sudo apt-get install -y curl wget git unzip xz-utils zip libglu1-mesa openjdk-11-jdk python3-pip

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install TypeScript globally
npm install -g typescript

# Set up Go (adjust the version as needed)
wget https://golang.org/dl/go1.17.3.linux-amd64.tar.gz
sudo tar -xvf go1.17.3.linux-amd64.tar.gz -C /usr/local
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc

# Install Python packages (if any)
pip3 install pytest # Example Python package

# Cleanup
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/* go1.17.3.linux-amd64.tar.gz

# Any other setup commands can go here
# Install Rust and add wasm target
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Set the default Rust toolchain to stable
rustup default stable
