#!/bin/sh

echo ""
echo ""
echo "Shared"
echo "-----"

export DOTFILES_SHARED_OMZ_DIR="${DOTFILES_SHARED_DIR}/oh-my-zsh"
sh ${DOTFILES_SHARED_OMZ_DIR}/install.sh
