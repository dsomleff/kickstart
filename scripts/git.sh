#!/usr/bin/env bash

set -e

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "🚨 Git not found. Installing Git... 🫛"
    brew install git
    echo "✅ Git installation complete!"
else
    echo "🎉 Git is already installed. Version: $(git --version)"
fi

