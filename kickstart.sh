#!/usr/bin/env bash

set -e

echo "🚀 Starting macOS kickstart..."

# Define the script directory (relative path)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔧 Sourcing brew.sh to install Homebrew..."
source "$SCRIPT_DIR/scripts/brew.sh"

echo "🔧 Sourcing brew-packages.sh to install packages..."
source "$SCRIPT_DIR/scripts/brew-packages.sh"

echo "🫛 Sourcing git.sh to install git..."
source "$SCRIPT_DIR/scripts/git.sh"

echo "📂 Sourcing dotfiles.sh to clone dotfiles repo..."
source "$SCRIPT_DIR/scripts/dotfiles.sh"

echo "🎯 Sourcing stow.sh to create most symlinks..."
source "$SCRIPT_DIR/scripts/stow.sh"

echo "🎯 Sourcing macos.sh to setup macOS preferences..."
source "$SCRIPT_DIR/scripts/macos.sh"

echo "✅ Kickstart complete! Your mac is ready! 🤘"
