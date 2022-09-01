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
ln -sf ${DOTFILES_OMZ_DIR}/custom/plugins/* ~/.oh-my-zsh/custom/plugins/
ln -sf ${DOTFILES_OMZ_DIR}/custom/themes/* ~/.oh-my-zsh/custom/themes/
echo "✅ oh-my-zsh configured"
