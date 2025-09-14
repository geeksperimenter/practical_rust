#!/usr/bin/env bash
set -e

echo "🔧 Starting SSH service..."
sudo service ssh start

echo "🦀 Installing Rust via rustup..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

echo "✅ Rust installed: $(rustc --version)"