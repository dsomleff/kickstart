#!/usr/bin/env bash

set -e

echo "🎯 Stowing dotfiles into your system..."

DOTFILES_DIR="$HOME/dotfiles"

# Stow individual files
stow --dir="$DOTFILES_DIR" --target="$HOME" --verbose .gitconfig
stow --dir="$DOTFILES_DIR" --target="$HOME" --verbose .gitignore_global
stow --dir="$DOTFILES_DIR" --target="$HOME" --verbose githelpers
stow --dir="$DOTFILES_DIR" --target="$HOME" --verbose .ideavimrc

# Stow .config subdirectories
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose alacritty
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose nvim
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose tmux
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose yazi
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose starship

# Stow scripts
stow --dir="$DOTFILES_DIR/.local" --target="$HOME/.local" --verbose scripts

echo "✅ Dotfiles stowed successfully!"

