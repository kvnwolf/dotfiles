#!/bin/sh

echo ""

SKIP_OMZ=${SKIP_OMZ:-false}

if [ ${SKIP_OMZ} == "true" ] ; then
	echo "⏩ skipping oh-my-zsh setup"
	exit 0
fi

if [ -d "${HOME}/.oh-my-zsh" ] ; then
	echo "✅ oh-my-zsh is already installed"
else
	echo "🚧 installing oh-my-zsh..."
	/bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "✅ oh-my-zsh installed"
fi

echo "🚧 configuring oh-my-zsh..."
ln -sf ${DOTFILES_SHARED_OMZ_DIR}/.zshrc ~/.zshrc
ln -sf ${DOTFILES_SHARED_OMZ_DIR}/.p10k.zsh ~/.p10k.zsh
ln -sf ${DOTFILES_SHARED_OMZ_DIR}/custom/plugins/* ~/.oh-my-zsh/custom/plugins/
ln -sf ${DOTFILES_SHARED_OMZ_DIR}/custom/themes/* ~/.oh-my-zsh/custom/themes/
echo "✅ oh-my-zsh configured"
