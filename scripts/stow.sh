#!/usr/bin/env bash

set -e

echo "🎯 Stowing dotfiles into your system..."

DOTFILES_DIR="$HOME/dotfiles"

echo "🔗 Stowing top-level dotfiles..."
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DOTFILES_DIR/.ideavimrc" "$HOME/.ideavimrc"
ln -sf "$DOTFILES_DIR/githelpers" "$HOME/githelpers"

echo "🔗 Stowing config directories..."
stow --dir="$DOTFILES_DIR/.config" --target="$HOME/.config" --verbose alacritty nvim tmux yazi starship


echo "🎯 Stowing local scripts..."
stow --dir="$DOTFILES_DIR/.local" --target="$HOME/.local" --verbose scripts

echo "🔗 Symlinking Nushell config..."
NU_CONFIG_DIR=$(nu -c 'echo $nu.default-config-dir')
ln -sf "$HOME/dotfiles/.config/nushell" "$NU_CONFIG_DIR"

echo "✅ Dotfiles stowed successfully!"

