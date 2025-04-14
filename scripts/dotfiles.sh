#!/bin/bash

# Define the dotfiles repository URL
DOTFILES_REPO="https://github.com/dsomleff/dotfiles"
DOTFILES_DIR="$HOME/dotfiles"

# Check if the dotfiles directory already exists
if [ -d "$DOTFILES_DIR" ]; then
    echo "⚠️ Dotfiles directory already exists. Pulling latest changes..."
    cd "$DOTFILES_DIR" || exit
    git pull origin main
else
    echo "🌿 Cloning dotfiles repository..."
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
    echo "✅ Dotfiles cloned to $DOTFILES_DIR"
fi

# Output the result
echo "📂 Dotfiles are located at $DOTFILES_DIR"

