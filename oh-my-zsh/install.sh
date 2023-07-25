#!/bin/sh

source "${DOTFILES_DIR}/functions.sh"
Prompt "Do you want to install and setup oh-my-zsh?"

echo "🚧 installing oh-my-zsh..."
TEST_CURRENT_SHELL="zsh"
/bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "✅ oh-my-zsh installed"

echo "🚧 configuring oh-my-zsh..."
ln -sf ${DOTFILES_OMZ_DIR}/.zshrc ~/.zshrc
ln -sf ${DOTFILES_OMZ_DIR}/.p10k.zsh ~/.p10k.zsh
rm -rf ~/.oh-my-zsh/custom
ln -sf ${DOTFILES_OMZ_DIR}/custom ~/.oh-my-zsh/custom
echo "✅ oh-my-zsh configured"
