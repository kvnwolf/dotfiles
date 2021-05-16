#!/bin/sh

echo ""

SKIP_BIN=${SKIP_BIN:-false}

if [ ${SKIP_BIN} == "true" ] ; then
	echo "⏩ skipping binaries installation"
	exit 0
fi

echo "🚧 installing binaries..."
if [[ "$(uname -m)" == "arm64" ]]; then
	export PATH="/opt/homebrew/bin:${PATH}"
fi
if [ ! -x "$(command -v brew)" ] ; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update
brew upgrade
brew bundle --file="${DOTFILES_OSX_BIN_DIR}/Brewfile" --quiet
brew cleanup
echo "✅ binaries installed"
