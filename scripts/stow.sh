#!/usr/bin/env bash

set -e

echo "🎯 Stowing dotfiles into your system..."

DOTFILES_DIR="$HOME/dotfiles"

# Symlink individual files
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DOTFILES_DIR/.ideavimrc" "$HOME/.ideavimrc"
ln -sf "$DOTFILES_DIR/githelpers" "$HOME/githelpers"

# Stow .config subdirectories
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose alacritty
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose nvim
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose tmux
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose yazi
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose starship

# Stow scripts
stow --dir="$DOTFILES_DIR/.local" --target="$HOME/.local" --verbose scripts

echo "✅ Dotfiles stowed successfully!"

