#!/bin/bash

# Upgrade Homebrew to ensure everything is up-to-date
echo "🍺 Upgrading Homebrew..."
brew upgrade

# Install CLI tools
echo "⚙️ Installing CLI tools..."
brew install fzf
brew install zoxide
brew install neovim
brew install tmux
brew install tmuxp
brew install stow
brew install wget
brew install bat
brew install yazi
brew install starship
brew install tree-sitter
brew install fd
brew install ripgrep
brew install nushell
brew install fnm
# brew install git
# brew install zsh

# Install development tools
echo "💻 Installing development tools..."
brew install --cask alacritty
brew install insomnia
brew install raycast
brew install --cask arc
brew install --cask webstorm
# brew install --cask rancher
# brew install --cask docker

# Install fonts
echo "🖋️ Installing fonts..."
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono


# Install other tools
echo "🛠️ Installing other tools..."
brew install --cask telegram
# brew install --cask notion

# Clean up outdated versions from the cellar
echo "🧹 Cleaning up outdated versions..."
brew cleanup

echo "🎉 All packages installed successfully!"

