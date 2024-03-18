#!/bin/bash

# Install Rust and add wasm target

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Set the default Rust toolchain to stable
rustup default stable

# Install TypeScript globally
npm install -g typescript
# Download Zig
ZIG_VERSION="0.12.0" # Check https://ziglang.org/download/ for the latest version
curl -L https://ziglang.org/builds/zig-linux-x86_64-0.12.0-dev.3342+f88a971e4.tar.xz -o zig-linux-x86_64-${ZIG_VERSION}.tar.xz

# Extract Zig
tar -xf zig-linux-x86_64-${ZIG_VERSION}.tar.xz
rm zig-linux-x86_64-${ZIG_VERSION}.tar.xz

# Move Zig to a known location
#mv zig-linux-x86_64-${ZIG_VERSION} /opt/zig

# Add Zig to PATH
echo 'export PATH="/workspaces/Algorithms-and-BigO/zig-linux-x86_64-0.12.0-dev.3342+f88a971e4:$PATH"' >> ~/.bashrc

# Source the .bashrc to update the PATH
source ~/.bashrc
# Cleanup
sudo apt-get clean
