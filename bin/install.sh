#!/bin/sh

source "${DOTFILES_DIR}/functions.sh"
Prompt "Do you want install binaries?"

echo "🚧 installing binaries..."
if [[ "$(uname -m)" == "arm64" ]]; then
  export PATH="/opt/homebrew/bin:${PATH}"
fi
if [ ! -x "$(command -v brew)" ] ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update
brew upgrade
brew bundle --file="${DOTFILES_BIN_DIR}/Brewfile" --quiet
brew cleanup
ln -sf ${DOTFILES_BIN_DIR}/.gitconfig ~/.gitconfig
mkdir -p ~/.config
ln -sf ${DOTFILES_BIN_DIR}/starship.toml ~/.config/starship.toml
echo "✅ binaries installed"
