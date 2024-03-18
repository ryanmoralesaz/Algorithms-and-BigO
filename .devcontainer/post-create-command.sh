#!/bin/bash

# Update and install system dependencies
sudo apt-get update

# Install Rust and add wasm target
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Set the default Rust toolchain to stable
rustup default stable

# Install TypeScript globally
npm install -g typescript

# Cleanup
sudo apt-get clean
