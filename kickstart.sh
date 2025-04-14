#!/bin/bash

set -e

echo "🚀 Starting macOS kickstart..."

# Define the script directory (relative path)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source brew.sh to install Homebrew
echo "🔧 Sourcing brew.sh to install Homebrew..."
source "$SCRIPT_DIR/scripts/brew.sh"

# Source brew-packages.sh to install packages
echo "🔧 Sourcing brew-packages.sh to install packages..."
source "$SCRIPT_DIR/scripts/brew-packages.sh"

# Source git.sh to install git
echo "🫛 Sourcing git.sh to install git..."
source "$SCRIPT_DIR/scripts/git.sh"

# Source dotfiles.sh to install git
echo "📂 Sourcing dotfiles.sh to install dotfiles..."
source "$SCRIPT_DIR/scripts/dotfiles.sh"

# Source stow.sh to install git
echo "🎯 Sourcing stow.sh to install stow..."
source "$SCRIPT_DIR/scripts/stow.sh"

echo "✅ Kickstart complete! Your mac is ready! 🤘"
