#!/bin/bash

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
