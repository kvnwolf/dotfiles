#!/bin/bash

set -e

REPO_URL="https://github.com/kvnwolf/dotfiles.git"
DEFAULT_INSTALL_DIR="$HOME/Developer/github.com/kvnwolf/dotfiles"

clear
echo ""
echo "🐺 Kevin Wolf's Dotfiles Installer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if [ -z "$INSTALL_DIR" ]; then
  echo "📂 Where would you like to install dotfiles?"
  echo "   Press ENTER for default: ${DEFAULT_INSTALL_DIR}"
  echo ""
  read -p "   Installation path: " INSTALL_DIR
  INSTALL_DIR=${INSTALL_DIR:-$DEFAULT_INSTALL_DIR}
fi

INSTALL_DIR="${INSTALL_DIR/#\~/$HOME}"

echo ""
echo "📍 Installing to: ${INSTALL_DIR}"
echo ""

if [ -d "$INSTALL_DIR" ]; then
  echo "⚠️  Directory already exists!"
  read -p "   Do you want to remove it and continue? (y/N): " -n 1 -r
  echo ""
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    echo "❌ Installation cancelled"
    exit 1
  fi
  echo "🗑️  Removing existing directory..."
  rm -rf "$INSTALL_DIR"
fi

echo "📦 Creating installation directory..."
mkdir -p "$(dirname "$INSTALL_DIR")"

echo "⬇️  Cloning repository..."
if ! git clone --recursive "$REPO_URL" "$INSTALL_DIR"; then
  echo ""
  echo "❌ Failed to clone repository"
  exit 1
fi

echo "🚀 Running installation script..."
echo ""
cd "$INSTALL_DIR"
sh install.sh

echo ""
echo "✅ Installation complete!"
echo ""
