#!/bin/sh

echo ""

SKIP_APPS=${SKIP_APPS:-false}

if [ ${SKIP_APPS} == "true" ] ; then
	echo "⏩ skipping apps installation"
	exit 0
fi

echo "🚧 installing apps..."
if [[ "$(uname -m)" == "arm64" ]]; then
	export PATH="/opt/homebrew/bin:${PATH}"
fi
brew bundle --file="${DOTFILES_OSX_APPS_DIR}/Brewfile" --quiet
brew cleanup
ln -sf ${DOTFILES_OSX_APPS_DIR}/.hyper.js ~/.hyper.js
echo "✅ apps installed"
