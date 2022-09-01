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
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH
n lts
echo "✅ binaries installed"
