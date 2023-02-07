#!/bin/sh

export DOTFILES_DIR=$(pwd)

clear
echo ""
echo ""
echo "🐺 Welcome to Kevin Wolf's configuration dotfiles"
echo "🏗  Setting up your system..."

export DOTFILES_OMZ_DIR="${DOTFILES_DIR}/oh-my-zsh"
sh ${DOTFILES_OMZ_DIR}/install.sh

export DOTFILES_BIN_DIR="${DOTFILES_DIR}/bin"
sh ${DOTFILES_BIN_DIR}/install.sh

export DOTFILES_APPS_DIR="${DOTFILES_DIR}/apps"
sh ${DOTFILES_APPS_DIR}/install.sh
